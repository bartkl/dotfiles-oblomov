#!/bin/bash
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# system
ln -s $SCRIPTDIR/system/asound.conf            /etc/
ln -s $SCRIPTDIR/system/fstab                  /etc/
ln -s $SCRIPTDIR/system/hosts                  /etc/
ln -s $SCRIPTDIR/mpd/mpdscribble.conf          /etc/
ln -s $SCRIPTDIR/mpd/mpd.conf                  /etc/
ln -s $SCRIPTDIR/transmission/settings.json    /etc/transmission-daemon/
ln -s $SCRIPTDIR/mpd/update-mpd.service        /etc/systemd/system/
ln -s $SCRIPTDIR/system/sshd_config            /etc/ssh/

# user
runuser -l bart "-c ln -s $SCRIPTDIR/zsh/.zshrc          ~/.zshrc"
runuser -l bart "-c ln -s $SCRIPTDIR/tmux/.tmux.conf     ~/.tmux.conf"
runuser -l bart "-c ln -s $SCRIPTDIR/vim/.vimrc          ~/.vimrc"
runuser -l bart "-c ln -s $SCRIPTDIR/vim/.vim            ~/.vim"
runuser -l bart "-c ln -s $SCRIPTDIR/beets/config.yaml   ~/.config/beets/"
runuser -l bart "-c ln -s $SCRIPTDIR/ssh/config          ~/.ssh/"
