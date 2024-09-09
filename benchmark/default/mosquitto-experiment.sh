#! /bin/bash

date >> mosquitto-results.txt
mqtt-benchmark -broker tcp://172.89.0.241:1883 -clients 2000 -qos 1 -topic "/mosquitto" -ramp-up-time 100 -quiet | tail -11 >> mosquitto-results.txt
date >> mosquitto-results.txt

sleep 180

date >> mosquitto-results.txt
mqtt-benchmark -broker tcp://172.89.0.241:1883 -clients 4000 -qos 1 -topic "/mosquitto" -ramp-up-time 400 -quiet | tail -11 >> mosquitto-results.txt
date >> mosquitto-results.txt

sleep 180

date >> mosquitto-results.txt
mqtt-benchmark -broker tcp://172.89.0.241:1883 -clients 6000 -qos 1 -topic "/mosquitto" -ramp-up-time 600 -quiet | tail -11 >> mosquitto-results.txt
date >> mosquitto-results.txt

sleep 180
date >> mosquitto-results.txt
