#!/bin/bash

echo "=== Process Priority Management Demo ==="

echo
echo "Current top CPU consuming processes:"
ps -eo pid,user,comm,%cpu,nice --sort=-%cpu | head -n 10

echo
echo "Starting a sample low-priority process (sleep 60) with nice +10..."
nice -n 10 sleep 60 &
LOW_PID=$!
echo "Started process PID: $LOW_PID"

echo
echo "Starting a sample high-priority process (sleep 60) with nice -5..."
nice -n -5 sleep 60 &
HIGH_PID=$!
echo "Started process PID: $HIGH_PID"

echo
echo "Processes after starting new tasks:"
ps -eo pid,user,comm,%cpu,nice --sort=-%cpu | grep -E "$LOW_PID|$HIGH_PID"

echo
echo "Increasing priority of low-priority process $LOW_PID using renice..."
sudo renice -n -5 -p $LOW_PID
echo "New priority:"
ps -p $LOW_PID -o pid,user,comm,nice

echo
echo "Decreasing priority of high-priority process $HIGH_PID using renice..."
sudo renice -n 10 -p $HIGH_PID
echo "New priority:"
ps -p $HIGH_PID -o pid,user,comm,nice

echo
echo "Cleaning up sample processes..."
kill $LOW_PID
kill $HIGH_PID
echo "Sample processes terminated."

echo
echo "=== Process Priority Demo Completed ==="
