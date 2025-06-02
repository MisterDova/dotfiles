#!/bin/bash

get_wifi_name() {
    if ping -c 1 8.8.8.8 &>/dev/null; then
        WIFI_NAME=" "
    else
        WIFI_NAME="󰖪"
    fi
    echo "$WIFI_NAME"
}

get_vpn_status() {
    VPN_STATUS=$(scutil --nc list | grep Connected | sed -E 's/.*"(.*)".*/\1/' | sed 's/\.//g')
    if [[ -z "$VPN_STATUS" ]]; then
        #echo ""
        echo ""
    else
        VPN_NAME=$(echo "$VPN_STATUS" | awk '{print $1}')
        echo "$VPN_NAME"
    fi

}

get_network_speed() {
    RX_PREV=$(netstat -ib | grep -e "en0" | awk '{print $7}' | head -n 1)
    TX_PREV=$(netstat -ib | grep -e "en0" | awk '{print $10}' | head -n 1)
    sleep 1
    RX_NEXT=$(netstat -ib | grep -e "en0" | awk '{print $7}' | head -n 1)
    TX_NEXT=$(netstat -ib | grep -e "en0" | awk '{print $10}' | head -n 1)
    RX_RATE=$(( (RX_NEXT - RX_PREV) / 1024 ))
    TX_RATE=$(( (TX_NEXT - TX_PREV) / 1024 ))
    echo "D:${RX_RATE}KB/s | U:${TX_RATE}KB/s"
}

WIFI_NAME=$(get_wifi_name)
VPN_STATUS=$(get_vpn_status)
NETWORK_SPEED=$(get_network_speed)

sketchybar --set $NAME icon="$WIFI_NAME $VPN_STATUS" \
