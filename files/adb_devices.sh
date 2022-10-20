#!/bin/bash
count=$(adb devices -l | grep device: | wc -l)
echo "$count devices"
