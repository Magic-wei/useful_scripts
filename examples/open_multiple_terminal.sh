#!/bin/bash

# By default, use 'gnome-terminal' command to create a new terminal:
# > gnome-terminal --tab "Terminal Title" -x bash -c "your commands;exec /bin/bash"
# You can also try other terminal like terminator, it's the same: 
# > terminator --title "title" -x bash -c "your commands;exec /bin/bash"
# This script provide an example to craete two terminals one-by-one with 1 second interval 
# and create folders and files under the script dir.

SCRIPT_DIR=$( cd $( dirname $(readlink -f ${BASH_SOURCE[0]}) ) && pwd )

DIR1="open_multiple_terminal1"
DIR2="open_multiple_terminal2"

gnome-terminal --tab "terminal1" -x bash -c "cd $SCRIPT_DIR; \
                                             mkdir $DIR1; \
                                             cd $DIR1; \
                                             touch $DIR1.txt; \
                                             echo '$DIR1.txt created!'; \
                                             exec /bin/bash"

sleep 1s

gnome-terminal --tab "terminal2" -x bash -c "cd $SCRIPT_DIR; \
                                             mkdir $DIR2; \
                                             cd $DIR2; \
                                             touch $DIR2.csv; \
                                             echo '$DIR2.txt created!'; \
                                             exec /bin/bash"