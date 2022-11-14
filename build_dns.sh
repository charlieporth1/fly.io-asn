#!/bin/bash
sudo apt -y install golang git
git clone https://github.com/folbricht/routedns
cd routedns/cmd/routedns
go build -v .
export ROUTEDNS_DIR=$PWD
