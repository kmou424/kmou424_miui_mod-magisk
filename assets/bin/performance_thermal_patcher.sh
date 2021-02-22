ui_print ""
ui_print "# Installing Performance Thermal"
CPUINFO_RES=`cat /proc/cpuinfo`
PROCESSOR=${CPUINFO_RES##*Inc }

ui_print "Platform: ${PROCESSOR}"
if [ -d ${TMP}/assets/thermal/${PROCESSOR} ];then
  cp ${TMP}/assets/thermal/${PROCESSOR}/* ${MODPATH}/system/vendor/etc/
  ui_print "温控安装完成"
  RESULT="成功"
else
  ui_print "错误: 没有找到适用于你的设备的温控配置"
  RESULT="失败"
fi
ui_print ""
ui_print "安装结果: ${RESULT}"
ui_print "# Performance Thermal Installed"