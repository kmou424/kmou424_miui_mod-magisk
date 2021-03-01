#!/system/bin/sh
#Copyright © 2019 - 2021 YAWAsau. All rights reserved.
TAG=doze_service

screen=`dumpsys window policy | grep "mInputRestricted"|cut -d= -f2`
#识别doze状态
dumpsys deviceidle | grep -q Enabled=true
Ad=$?
if [[ $Ad = 0 ]]; then
   d=on
else
   d=off
fi
if [[ $screen = true ]];then
 if [[ $d = off ]];then      
    dumpsys deviceidle enable
    dumpsys deviceidle force-idle
    $LOGXPATH "${TAG}: Screen status: OFF"
    $LOGXPATH "${TAG}: Enter doze mode"
 fi
else
 if [[ $d = on ]];then
    dumpsys deviceidle disable
    $LOGXPATH "${TAG}: Screen status: On"
    $LOGXPATH "${TAG}: Quit doze mode"
  fi
fi