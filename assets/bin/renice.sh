TAG=renice_opt
$LOGXPATH "${TAG}: Starting renice optimization"

function white_list()
{
  pgrep -o $1 | while read pid; do
  renice -n -20 -p $pid
  done
  if [ $? -eq 0 ]; then
     $LOGXPATH "${TAG}: white_list: $1 succeeded"
  else
     $LOGXPATH "${TAG}: white_list: $1 failed"
  fi
}

function black_list()
{
  pgrep -o $1 | while read pid; do
  renice -n 19 -p $pid
  done
  if [ $? -eq 0 ]; then
     $LOGXPATH "${TAG}: black_list: $1 succeeded"
  else
     $LOGXPATH "${TAG}: black_list: $1 failed"
  fi
}

# SurfaceFlinger
white_list surfaceflinger

# system_server
white_list system_server

# zygote
white_list zygote

# HW
white_list android.hardware.graphics.composer
white_list vendor.qti.hardware.display.composer-service
white_list com.android.permissioncontroller

# SystemUI
white_list com.android.systemui

# MIUI Home
white_list com.miui.home

# freeform
white_list com.miui.freeform

# WebView
white_list com.google.android.webview:webview_service

# logd
black_list logd

$LOGXPATH "${TAG}: Optimized done"