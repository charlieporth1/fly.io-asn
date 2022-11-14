#!/bin/bash
auth="tskey-auth-kbUrqj6CNTRL-WpZ9SFhnq1BGiD1aShoowArbNpAfqqSK"
fly_file=./fly.toml
for line in $(cat fly.toml.list)
do
	current_app=$(cat $fly_file | grep app | awk -F\" '{print $2}')
	sed -i -e "s|$current_app|$line|g" $fly_file
	flyctl secrets set TAILSCALE_AUTH_KEY="$auth"
	fly deploy
	sleep 10s
done
