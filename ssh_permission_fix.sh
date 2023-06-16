#!/bin/bash

chmod u+rwx,go-rwx ~/.ssh

chmod u+rw,go-rwx .ssh/id_rsa
chmod u+rw,go-rwx .ssh/id_rsa.pub
chmod u+rw,go-rwx .ssh/authorized_keys
chmod u+rw,go-rwx .ssh/known_hosts
chmod u+rw,go-rwx .ssh/config
