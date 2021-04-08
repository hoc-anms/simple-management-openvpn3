#!/bin/bash
# openvpn3 session-start --config client.ovpn
path=$(openvpn3 configs-list | grep / | xargs)
#Path: /net/openvpn/v3/sessions/48206855sd4e6s4c7bs8060s8cc14e569b30
echo "Path: $path"
openvpn3 session-start --config-path  $path
