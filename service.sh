#!/system/bin/sh
# 请不要硬编码 /magisk/modname/... ; 请使用 $MODDIR/...
# 这将使你的脚本更加兼容，即使Magisk在未来改变了它的挂载点
MODDIR=${0%/*}

UTILSPATH=/data/kmou424

# 这个脚本将以 late_start service 模式执行
# 更多信息请访问 Magisk 主题

chmod 0755 /system/bin/logx
chmod +x /system/bin/logx
rm -rf ${UTILSPATH}/log

. ${UTILSPATH}/assets/bin/shit_log_remover.sh

# We should waiting for 20s and execute below scripts
sleep 20s
. ${UTILSPATH}/assets/bin/kill_process.sh
. ${UTILSPATH}/assets/bin/renice.sh