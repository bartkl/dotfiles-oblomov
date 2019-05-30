#!/bin/bash
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# system
ln -s $SCRIPTDIR/system/asound.conf            /etc/asound.conf
ln -s $SCRIPTDIR/system/fstab                  /etc/fstab
ln -s $SCRIPTDIR/transmission/settings.json    /etc/transmission-daemon/settings.json
ln -s $SCRIPTDIR/mpd/mpdscribble.conf          /etc/mpdscribble.conf
ln -s $SCRIPTDIR/mpd/mpd.conf                  /etc/mpd.conf
ln -s $SCRIPTDIR/mpd/update-mpd.service        /etc/systemd/system/

# user
runuser -l bart "-c ln -s $SCRIPTDIR/zsh/.zshrc        ~/.zshrc"
runuser -l bart "-c ln -s $SCRIPTDIR/tmux/.tmux.conf   ~/.tmux.conf"
runuser -l bart "-c ln -s $SCRIPTDIR/vim/.vimrc        ~/.vimrc"
runuser -l bart "-c ln -s $SCRIPTDIR/vim/.vim          ~/.vim"
