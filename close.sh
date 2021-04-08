#!/bin/bash
sessions_output=$(openvpn3 sessions-list | grep Path | xargs)
#Path: /net/openvpn/v3/sessions/48206855sd4e6s4c7bs8060s8cc14e569b30
split_result=($sessions_output)
session_path=${split_result[1]}
echo "closing session ${session_path}"
openvpn3 session-manage --session-path $session_path --disconnect

