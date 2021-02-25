# Thanks 酷安@风雪如花剑如霜
TAG=pmqq

. $UTILSPATH/tools/pm_utils.sh

$LOGXPATH "${TAG}: Starting pmqq service"
pm_disable com.tencent.mobileqq/com.tencent.proxyinner.plugin.loader.PluginToolProcessService
pm_disable com.tencent.mobileqq/com.tencent.av.service.AVServiceForQQ
pm_disable com.tencent.mobileqq/com.tencent.av.service.UtilsServiceForAV
pm_disable com.tencent.mobileqq/cooperation.qzone.QzonePluginProxyService
pm_disable com.tencent.mobileqq/cooperation.qzone.video.QzoneVideoPluginProxyService
pm_disable com.tencent.mobileqq/cooperation.qzone.remote.logic.QzoneWebPluginProxyService
pm_disable com.tencent.mobileqq/cooperation.qzone.QzonePluginPublishQueueProxyService
pm_disable com.tencent.mobileqq/cooperation.qzone.QzonePictureViewerProxyService
pm_disable com.tencent.mobileqq/com.tencent.mobileqq.music.QQPlayerService
pm_disable com.tencent.mobileqq/cooperation.qwallet.plugin.QWalletPluginProxyService
pm_disable com.tencent.mobileqq/cooperation.groupvideo.GVideoProxyService
pm_disable com.tencent.mobileqq/cooperation.groupvideo.GVideoSmallScreenProxyService
pm_disable com.tencent.mobileqq/cooperation.groupvideo.GVideoProxyUtilService
pm_disable com.tencent.mobileqq/com.tencent.mobileqq.mini.app.InternalAppBrandTaskPreloadReceiver
pm_disable com.tencent.mobileqq/com.tencent.mobileqq.mini.app.AppBrandTaskPreloadReceiver
pm_disable com.tencent.mobileqq/com.tencent.mobileqq.mini.app.AppBrandTaskPreloadReceiver1
pm_disable com.tencent.mobileqq/com.tencent.mobileqq.mini.app.AppBrandTaskPreloadReceiver2
pm_disable com.tencent.mobileqq/com.tencent.mobileqq.mini.app.AppBrandTaskPreloadReceiver3
pm_disable com.tencent.mobileqq/com.tencent.mobileqq.mini.app.AppBrandTaskPreloadReceiver4
pm_disable com.tencent.mobileqq/com.tencent.mobileqq.mini.app.AppBrandTaskPreloadReceiver5
pm_disable com.tencent.mobileqq/com.tencent.mobileqq.mini.app.AppBrandTaskPreloadReceiver7
pm_disable com.tencent.mobileqq/com.tencent.mobileqq.ar.ArConfigService
pm_disable com.tencent.mobileqq/com.tencent.mobileqq.ar.ARGlobalConfigService
pm_disable com.tencent.mobileqq/cooperation.qzone.plugin.QZonePatchService
$LOGXPATH "${TAG}: Done"