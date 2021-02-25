# Thanks 酷安@风雪如花剑如霜
TAG=pmwechat

. $UTILSPATH/tools/pm_utils.sh

$LOGXPATH "${TAG}: Starting pmwechat service"
pm_disable com.tencent.mm/com.tencent.mm.sandbox.updater.AppUpdaterUI
pm_disable com.tencent.mm/com.tencent.mm.sandbox.updater.AppInstallerUI
pm_disable com.tencent.mm/com.tencent.mm.plugin.nfc_open.ui.NfcWebViewUI
pm_disable com.tencent.mm/com.tencent.mm.plugin.appbrand.task.AppBrandTaskPreloadReceiver
pm_disable com.tencent.mm/com.tencent.mm.plugin.appbrand.task.AppBrandTaskPreloadReceiver1
pm_disable com.tencent.mm/com.tencent.mm.plugin.appbrand.task.AppBrandTaskPreloadReceiver2
pm_disable com.tencent.mm/com.tencent.mm.plugin.appbrand.task.AppBrandTaskPreloadReceiver3
pm_disable com.tencent.mm/com.tencent.mm.plugin.appbrand.task.AppBrandTaskPreloadReceiver4
$LOGXPATH "${TAG}: Done"