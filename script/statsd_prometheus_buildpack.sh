#!/bin/bash

# bash script to run the statsd_exporter and prometheus binaries
# Path: script/run.sh
cd bin/statsd_exporter
./statsd_exporter &

cd ../prometheus
./prometheus --config.file=prometheus.yml