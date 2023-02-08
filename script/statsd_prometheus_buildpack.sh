#!/bin/bash

# bash script to run the statsd_exporter and prometheus binaries
# Path: script/run.sh
echo "-----> Run statsd_prometheus_buildpack.sh"
echo "-----> Run statsd_exporter"
cd bin/statsd_exporter
./statsd_exporter & disown $!
echo "-----> Run statsd_exporter is running"

cd ~

echo "-----> Run prometheus"
cd bin/prometheus
./prometheus --config.file=prometheus.yml & disown $!
echo "-----> Run prometheus is running"