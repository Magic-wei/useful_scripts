#!/bin/bash
set -e  # exit on first error

main(){
  installFlameshot
}

installFlameshot(){
   wget https://github.com/lupoDharkael/flameshot/releases/download/v0.6.0/flameshot_0.6.0_xenial_x86_64.deb
   sudo dpkg -i flameshot_0.6.0_xenial_x86_64.deb
   sudo apt-get install -f
   rm -rf flameshot_0.6.0_xenial_x86_64.deb
   echo "flameshot installed successfully."
}

main

