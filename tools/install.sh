#!/bin/bash
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ln -s $SCRIPTDIR/backup                /usr/local/bin/backup  # change owner to user!
ln -s $SCRIPTDIR/beets2mpd             /usr/local/bin/beets2mpd
ln -s $SCRIPTDIR/update-mpd            /usr/local/bin/
