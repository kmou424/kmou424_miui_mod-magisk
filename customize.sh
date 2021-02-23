# 注意 这不是占位符！！这个代码的作用是将模块里的东西全部塞系统里，然后挂上默认权限
SKIPUNZIP=0

# Define MOD directory
MODDIR=${0%/*}

on_install() {
  TMP=/data/tmp
  mkdir -p $TMP/assets
  unzip -o $ZIPFILE "assets/*" -d $TMP

  . $TMP/assets/bin/miui_feature_patcher.sh
  . $TMP/assets/bin/performance_thermal_patcher.sh

  rm -rf $TMP
}

set_permissions() {
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  set_perm_recursive  $MODPATH  0  0  0755  0644
}