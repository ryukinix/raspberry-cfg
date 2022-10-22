#!/bin/bash
emacs-open () {
    emacsclient -nw
}

emacs-open-tmux () {
    tmux new-session -A -s emacs -E '/usr/bin/emacsclient -nw'
}

emacs-restart () {
    echo "Kill all emacs daemons"
    systemctl --user stop emacs
    echo "Start new emacs daemon"
    systemctl --user start emacs
}

emacs-not-success () {
    [[ $? != 0 ]]
}

main () {
    emacs-open-tmux
    emacs-not-success && emacs-restart && emacs-open-tmux
}

main
