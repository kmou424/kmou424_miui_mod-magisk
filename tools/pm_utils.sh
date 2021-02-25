function pm_disable()
{
  PM_DISABLE_RES=$(pm disable $1)
  if [ $? -eq 0 ]; then
     logx "${TAG}: $PM_DISABLE_RES"
  else
     logx "${TAG}: Error: $PM_DISABLE_RES"
  fi
}
function pm_enable()
{
  PM_DISABLE_RES=$(pm enable $1)
  if [ $? -eq 0 ]; then
     logx "${TAG}: $PM_DISABLE_RES"
  else
     logx "${TAG}: Error: $PM_DISABLE_RES"
  fi
}