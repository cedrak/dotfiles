#!/usr/bin/env bash
WPA_SUPPLICANT_PIDFILE="/home/cmd/.bin/wpa_supplicant.pid"
if [[ ! -f "$WPA_SUPPLICANT_PIDFILE" ]]; then
    sudo wpa_supplicant -P "$WPA_SUPPLICANT_PIDFILE" -B -D wext -i wlan0 -c /etc/wpa_supplicant.conf
fi
sudo dhclient wlan0
exit 0
