ui_print ""
ui_print "# Installing System App Replacer"
MIUI=$(getprop ro.miui.ui.version.name)
if [[ $MIUI = V12 ]] ; then :
elif [[ $MIUI = V125 ]] ; then : 
else
  ui_print "  - 失败, 仅支持MIUI 12/12.5"
  ui_print ""
  ui_print "# System App Replacer Installed"
  rm -rf $MODPATH
  rm -rf $TMPDIR
  exit 1
fi
ui_print "  - 开始精简:"

REPLACE="
/system/app/GFDelmarSetting
/system/priv-app/Stk1
/system/priv-app/ViPERFX
/system/product/app/PhotoTable
/system/app/BasicDreams
/system/app/ModemTestBox
/system/app/Cit
/system/app/talkback
/system/app/AntHalService
/system/product/priv-app/EmergencyInfo
/system/priv-app/MiRcs
/system/app/WMService
/system/app/WAPPushManager
/system/app/Traceur
/system/app/MiuiBugReport
/system/priv-app/MiService
/system/app/MiuiDaemon
/system/app/Userguide
/system/priv-app/UserDictionaryProvider
/system/priv-app/BlockedNumberProvider
/system/app/Stk
/system/app/SimAppDialog
/system/app/SimContact
/system/app/CatchLog
/system/app/AnalyticsCore
/system/app/MSA
/system/priv-app/NewHome
/system/app/HybridAccessory
/system/app/HybridPlatform
/system/app/goodix_sz
"

ui_print "    感谢酷安@阿巴酱"
ui_print ""
ui_print "# System App Replacer Installed"