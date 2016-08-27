#!/bin/bash
# This will run provisioning
sudo apt-get -qq update
sudo apt-get install -y curl build-essential
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
curl -sL https://repos.influxdata.com/influxdb.key | sudo apt-key add -
echo "deb https://repos.influxdata.com/debian jessie stable" | sudo tee /etc/apt/sources.list.d/influxdb.list
sudo apt-get -qq update
sudo apt-get install -y nodejs influxdb
sudo systemctl start influxdb