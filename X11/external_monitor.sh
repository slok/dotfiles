#!/usr/bin/env bash


# Laptop resolution
RES_LAPTOP_W=3200
RES_LAPTOP_H=1820

# External monitor resolution
RES_MONITOR_W=1920
RES_MONITOR_H=1080

# Scale of the external monitor
SCALE_W=2
SCALE_H=2

POS_LAPTOP_H=$((RES_MONITOR_H * SCALE_H))
FB_MONITOR_W=$((RES_MONITOR_W * SCALE_W))
FB_MONITOR_H=$((RES_LAPTOP_H + ${POS_LAPTOP_H}))

xrandr --output eDP1\
      --auto \
      --pos 0x${POS_LAPTOP_H} \
      --output HDMI1 \
      --scale ${SCALE_W}x${SCALE_H} \
      --auto \
      --pos 0x0 \
      --fb ${FB_MONITOR_W}x${FB_MONITOR_H}
