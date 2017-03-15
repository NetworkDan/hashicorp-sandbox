#!/bin/bash

echo "replacing /etc/hosts file"
name="$(echo $HOSTNAME | cut -d . -f1)"
cat << EOF > /etc/hosts
127.0.0.1   $name.local $name localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6
192.168.0.101  test1 test1.local
192.168.0.102  test2 test2.local
EOF
