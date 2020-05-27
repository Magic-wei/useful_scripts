#!/bin/bash
set -e  # exit on first error

SCRIPT_DIR=$( cd $( dirname $(readlink -f ${BASH_SOURCE[0]}) ) && pwd )
BIN_DIR=$HOME/bin

setupBin(){
    if [ ! -d $BIN_DIR ]; then
        mkdir $BIN_DIR
    fi

    # find_all_folders
    APP_NAME="find_all_folders"
    if [ -f $BIN_DIR/$APP_NAME ]; then
        echo "Found bin entry: $BIN_DIR/$APP_NAME"
    else
        ln -sfn $SCRIPT_DIR/tools/$APP_NAME $BIN_DIR/$APP_NAME
    fi

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

    echo "setup to $BIN_DIR successfully!"
}

setupBashrc() {
    # find_all_folders alias
    APP_NAME="find_all_folders"
    if (grep -q "${APP_NAME}" ~/.bashrc); then
        echo "Found bashrc entry: ${APP_NAME}=$SCRIPT_DIR/tools/${APP_NAME}"
    else
        echo "alias ${APP_NAME}='${SCRIPT_DIR}/tools/${APP_NAME}'" >> ~/.bashrc
    fi

    # git_update_batch alias
    APP_NAME="git_update_batch"
    if (grep -q "${APP_NAME}" ~/.bashrc); then
        echo "Found bashrc entry: ${APP_NAME}=$SCRIPT_DIR/tools/${APP_NAME}"
    else
        echo "alias ${APP_NAME}='${SCRIPT_DIR}/tools/${APP_NAME}'" >> ~/.bashrc
    fi
    
    # find_git_repo alias
    APP_NAME="find_git_repo"
    if (grep -q "${APP_NAME}" ~/.bashrc); then
        echo "Found bashrc entry: ${APP_NAME}=$SCRIPT_DIR/tools/${APP_NAME}"
    else
        echo "alias ${APP_NAME}='${SCRIPT_DIR}/tools/${APP_NAME}'" >> ~/.bashrc
    fi

    # echo_with_color alias
    APP_NAME="echo_with_color"
    if (grep -q "${APP_NAME}" ~/.bashrc); then
        echo "Found bashrc entry: ${APP_NAME}=$SCRIPT_DIR/tools/${APP_NAME}"
    else
        echo "alias ${APP_NAME}='${SCRIPT_DIR}/tools/${APP_NAME}'" >> ~/.bashrc
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
