# 注意 这不是占位符！！这个代码的作用是将模块里的东西全部塞系统里，然后挂上默认权限
SKIPUNZIP=0

# Define MOD directory
MODDIR=${0%/*}

UTILSPATH=/data/kmou424

rm -rf $UTILSPATH
mkdir -p $UTILSPATH
ui_print "# 正在释放开机脚本文件"
unzip -q -o "$ZIPFILE" 'assets/*' 'tools/*' -d $UTILSPATH
set_perm_recursive  $UTILSPATH  0  0  0755  0644

. $UTILSPATH/assets/bin/miui_feature_patcher.sh
. $UTILSPATH/assets/bin/performance_thermal_patcher.sh
. $UTILSPATH/assets/bin/system_app_replacer.sh
. $UTILSPATH/assets/bin/shit_log_remover.sh