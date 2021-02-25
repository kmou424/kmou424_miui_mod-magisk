ui_print ""
ui_print "# Installing Shit Log Remover"

# MIUI Home Log (Thanks 酷安@雄氏老方)
chmod 777 /data/user_de/0/com.miui.home/cache/debug_log
rm -rf /data/user_de/0/com.miui.home/cache/debug_log
touch /data/user_de/0/com.miui.home/cache/debug_log
chmod 000 /data/user_de/0/com.miui.home/cache/debug_log

# Wlan Logs (Thanks 酷安@Amktiao)
chmod 777 /data/vendor/wlan_logs/
rm -rf /data/vendor/wlan_logs/
touch /data/vendor/wlan_logs/
chmod 000 /data/vendor/wlan_logs/

# mi-rcs Log (Thanks 酷安@风雪如花剑如霜
chmod 777 /data/media/0/JuphoonService
rm -rf /data/media/0/JuphoonService
touch /data/media/0/JuphoonService
chmod 000 /data/media/0/JuphoonService

ui_print "  - Done"
ui_print "# Shit Log Remover Installed"