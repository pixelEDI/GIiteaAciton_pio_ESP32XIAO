#!/bin/bash
# Exit immediately if a command exits with a non-zero status.
set -e
shopt -s globstar

# Install PlatformIO CLI
export PATH=$PATH:/root/.platformio/penv/bin
curl -fsSL https://raw.githubusercontent.com/platformio/platformio-core-installer/master/get-platformio.py -o get-platformio.py
python3 get-platformio.py

# Install ESP32 platform
pio pkg install --platform "espressif32"

# Compile project
pio run
