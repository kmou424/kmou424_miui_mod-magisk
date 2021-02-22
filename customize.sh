# 注意 这不是占位符！！这个代码的作用是将模块里的东西全部塞系统里，然后挂上默认权限
SKIPUNZIP=0

# Define MOD directory
MODDIR=${0%/*}

ui_print "# Installing MIUI Features"
ui_print ""
DEVICE=`getprop ro.product.device`
ui_print "  Device: "$DEVICE

# Prepare Feature File
if [ -f "/system/etc/device_features/$DEVICE.xml" ];then
  FEATURE_DIR="/system/etc/device_features/"
  FEATURE_PATH="/system/etc/device_features/$DEVICE.xml"
else
  FEATURE_DIR="/system/vendor/etc/device_features/"
  FEATURE_PATH="/system/vendor/etc/device_features/$DEVICE.xml"
fi

mkdir -p ${MODPATH}${FEATURE_DIR}
cp $FEATURE_PATH ${MODPATH}${FEATURE_DIR}

ui_print "  - 正在安装 纸质护眼..."
sed -i '3i\\t<bool name="support_paper_eyecare">true</bool>' ${MODPATH}${FEATURE_PATH}
sed -i '3i\\t<bool name="support_smart_eyecare">true</bool>' ${MODPATH}${FEATURE_PATH}
ui_print "    完成"

ui_print ""
ui_print "# MIUI Features Installed"