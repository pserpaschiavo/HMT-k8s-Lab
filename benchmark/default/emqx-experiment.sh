#! /bin/bash

date >> emqx-results.txt
mqtt-benchmark -broker tcp://172.89.0.240:1883 -clients 2000 -qos 1 -topic "/emqx" -ramp-up-time 100 -quiet | tail -11 >> emqx-results.txt
date >> emqx-results.txt

sleep 180

date >> emqx-results.txt
mqtt-benchmark -broker tcp://172.89.0.240:1883 -clients 4000 -qos 1 -topic "/emqx" -ramp-up-time 400 -quiet | tail -11 >> emqx-results.txt
date >> emqx-results.txt

sleep 180

date >> emqx-results.txt
mqtt-benchmark -broker tcp://172.89.0.240:1883 -clients 6000 -qos 1 -topic "/emqx" -ramp-up-time 600 -quiet | tail -11 >> emqx-results.txt
date >> emqx-results.txt

sleep 180
date >> emqx-results.txt

