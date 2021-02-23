# 注意 这不是占位符！！这个代码的作用是将模块里的东西全部塞系统里，然后挂上默认权限
SKIPUNZIP=0

# Define MOD directory
MODDIR=${0%/*}

UTILSPATH=/data/kmou424

on_install() {
  TMP=/data/tmp
  mkdir -p $TMP/assets
  unzip -o $ZIPFILE "assets/*" -d $TMP

  . $TMP/assets/bin/miui_feature_patcher.sh
  . $TMP/assets/bin/performance_thermal_patcher.sh
  . $TMP/assets/bin/system_app_replacer.sh
  . $TMP/assets/bin/shit_log_remover.sh

  rm -rf $TMP
}

set_permissions() {
  unzip -o "$ZIPFILE" -x "META-INF/*" -d $MODPATH >&2
  mkdir -p /data/kmou424
  unzip -o "$ZIPFILE" 'assets/bin/*' -d $UTILSPATH >&2
  set_perm_recursive  $MODPATH  0  0  0755  0644
  set_perm_recursive  $UTILSPATH  0  0  0755  0644
}