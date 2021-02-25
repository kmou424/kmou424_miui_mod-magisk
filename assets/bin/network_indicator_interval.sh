TAG=network_indicator_interval
mInterval=1000
settings put system status_bar_network_speed_interval $mInterval
if [ $? -eq 0 ]; then
   $LOGXPATH "${TAG}: Set status_bar_network_speed_interval=$mInterval done"
else
   $LOGXPATH "${TAG}: Set status_bar_network_speed_interval failed"
fi