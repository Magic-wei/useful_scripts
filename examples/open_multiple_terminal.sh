#!/bin/bash

# By default, use 'gnome-terminal' command to create a new terminal:
# > gnome-terminal --tab -- bash -ic "your commands;exec /bin/bash"
# # we use '-i' for interactive bash to source ~/.bashrc automatically when start a new terminal.
# You can also try other terminal like terminator (need to be installed first): 
# > terminator --title "title" -x bash -c "your commands;exec /bin/bash"
# This script provide an example to craete two terminals one-by-one with 1 second interval 
# and create folders and files under the script dir.

SCRIPT_DIR=$( cd $( dirname $(readlink -f ${BASH_SOURCE[0]}) ) && pwd )

DIR1="open_multiple_terminal1"
DIR2="open_multiple_terminal2"

gnome-terminal --tab -- bash -ic "cd $SCRIPT_DIR; \
                                  mkdir $DIR1; \
                                  cd $DIR1; \
                                  touch $DIR1.txt; \
                                  echo '$DIR1.txt created!'; \
                                  exec /bin/bash"

sleep 1s # 1s for 1 second, 0.5m for 0.5 minute

gnome-terminal --tab -- bash -ic "cd $SCRIPT_DIR; \
                                  mkdir $DIR2; \
                                  cd $DIR2; \
                                  touch $DIR2.csv; \
                                  echo '$DIR2.txt created!'; \
                                  exec /bin/bash" # keep the current tab open after all cmds executed