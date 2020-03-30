#!/bin/bash
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ln -s $SCRIPTDIR/backup                              /usr/local/bin/  # change owner to user!
ln -s $SCRIPTDIR/beets2mpd                           /usr/local/bin/
ln -s $SCRIPTDIR/update-mpd                          /usr/local/bin/
ln -s $SCRIPTDIR/videoplay                           /usr/local/bin/
ln -s $SCRIPTDIR/tv                                  /usr/local/bin/
ln -s $SCRIPTDIR/transmission-completion-handler     /usr/local/bin/
