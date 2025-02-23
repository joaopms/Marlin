#!/usr/bin/env bash

set -e

echo "Compiling"
platformio run --silent -e STM32F103RC_btt ; echo "done" >|"/tmp/ipc"

echo "Copying"
cp .pio/build/STM32F103RC_btt/firmware.bin $(date +%Y%m%d)-firmware.bin

echo "Done!"
