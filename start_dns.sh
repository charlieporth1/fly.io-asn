#!/bin/bash
CONFIG_DIR=routedns
source ./build_dns.sh
$ROUTEDNS_DIR/routedns --log-level=5 $CONFIG_DIR/*.toml
