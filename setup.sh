#!/bin/bash
set -e  # exit on first error

SCRIPT_DIR=$( cd $( dirname ${BASH_SOURCE[0]} ) && pwd )
BIN_DIR=$HOME/bin

setupBin(){
    # git_update_batch
    APP_NAME="git_update_batch"
    if [ -f $BIN_DIR/$APP_NAME ]; then
        echo "Found bin entry: $BIN_DIR/$APP_NAME"
    else
        ln -sfn $SCRIPT_DIR/tools/$APP_NAME $BIN_DIR/$APP_NAME
    fi

    # find_git_repo
    APP_NAME="find_git_repo"
    if [ -f $BIN_DIR/$APP_NAME ]; then
        echo "Found bin entry: $BIN_DIR/$APP_NAME"
    else
        ln -sfn $SCRIPT_DIR/tools/$APP_NAME $BIN_DIR/$APP_NAME
    fi

    # echo_with_color
    APP_NAME="echo_with_color"
    if [ -f $BIN_DIR/$APP_NAME ]; then
        echo "Found bin entry: $BIN_DIR/$APP_NAME"
    else
        ln -sfn $SCRIPT_DIR/tools/$APP_NAME $BIN_DIR/$APP_NAME
    fi

    echo "setup to $HOME/bin successfully!"
}

setupBashrc() {
    # git_update_batch alias
    if (grep -q "git_update_batch" ~/.bashrc); then
        echo "Found bashrc entry: git_update_batch=$SCRIPT_DIR/tools/git_update_batch"
    else
        echo "alias git_update_batch='${SCRIPT_DIR}/tools/git_update_batch'" >> ~/.bashrc
    fi
    
    # find_git_repo alias
    if (grep -q "find_git_repo" ~/.bashrc); then
        echo "Found bashrc entry: find_git_repo=$SCRIPT_DIR/tools/find_git_repo"
    else
        echo "alias find_git_repo='${SCRIPT_DIR}/tools/find_git_repo'" >> ~/.bashrc
    fi

    # echo_with_color alias
    if (grep -q "echo_with_color" ~/.bashrc); then
        echo "Found bashrc entry: echo_with_color=$SCRIPT_DIR/tools/echo_with_color"
    else
        echo "alias echo_with_color='${SCRIPT_DIR}/tools/echo_with_color'" >> ~/.bashrc
    fi
    
    # update
    source ~/.bashrc

    echo "setup to $HOME/.bashrc successfully!"
}

main() {
    if [ $# = 0 ]; then
        setupBin
    fi
    case $1 in
        "bin"    )  setupBin;;
        "bashrc" )  setupBashrc;;
        ?) echo "Support installation option: bin ($HOME/bin, default for blank arg) or bashrc ($HOME/.bashrc)." && exit;;
    esac
}

main $@
