#!/bin/bash
bash -c 'cat > /etc/motd' <<-'EOF'
_  ___                      __    _____ _ _      _        
 | |/ (_)                    / _|  / ____| (_)    | |       
 | ' / _ _ __   __ _    ___ | |_  | |    | |_  ___| | _____ 
 |  < | | '_ \ / _` |  / _ \|  _| | |    | | |/ __| |/ / __|
 | . \| | | | | (_| | | (_) | |   | |____| | | (__|   <\__ \
 |_|\_\_|_| |_|\__, |  \___/|_|    \_____|_|_|\___|_|\_\___/
                __/ |                                       
               |___/                                         
EOF

apt-get update --fix-missing
apt-get -y install software-properties-common
add-apt-repository -y universe
apt-get -y install virt-what curl
