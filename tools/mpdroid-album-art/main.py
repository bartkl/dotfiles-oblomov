import logging
from pathlib import Path

import beets
import beets.ui
import beetsplug.web
import flask


# Beets Web plugin Flask app initialization and configuration.
app = beetsplug.web.app

app.config['lib'] = beets.ui._open_library(beets.config)

# Logging.
gunicorn_error_logger = logging.getLogger('gunicorn.error')
app.logger.handlers = gunicorn_error_logger.handlers
app.logger.setLevel(gunicorn_error_logger.level)


# CORS.
#app.logger.info(f"Enabling CORS.")

#from flask_cors import CORS

#app.config['CORS_ALLOW_HEADERS'] = "Content-Type"
#CORS(app, resources={
#    r"/*": {'origins': r"*"}
#})


@app.route("/cover-art/<everything:p>/cover.jpg")
def get_cover_art(p):
    full_path = str(Path(beets.config['directory'].get()) / p)
    item_json = beetsplug.web.item_at_path(full_path).json
    gunicorn_error_logger.debug(item_json)
    if item_json:
        album_id = item_json['album_id']
        return beetsplug.web.album_art(album_id)
    else:
        flask.abort(404)


if __name__ == '__main__':
    app.run(threaded=True, debug=True)

