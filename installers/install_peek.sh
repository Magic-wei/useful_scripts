#!/bin/bash
set -e  # exit on first error

main(){
  installPeek
}

installPeek(){
   sudo add-apt-repository ppa:peek-developers/stable
   sudo apt update
   sudo apt install -y peek
}

main
