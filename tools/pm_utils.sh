function pm_disable()
{
  PM_DISABLE_RES=$(pm disable $1)
  if [ $? -eq 0 ]; then
     $LOGXPATH "${TAG}: $PM_DISABLE_RES"
  else
     $LOGXPATH "${TAG}: Disable $1 failed"
  fi
}
function pm_enable()
{
  PM_DISABLE_RES=$(pm enable $1)
  if [ $? -eq 0 ]; then
     $LOGXPATH "${TAG}: $PM_DISABLE_RES"
  else
     $LOGXPATH "${TAG}: Enable $1 failed"
  fi
}