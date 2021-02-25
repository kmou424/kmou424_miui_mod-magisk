TAG=kill_process
$LOGXPATH "${TAG}: Starting Kill Process"

# Kill Process
function kill_process()
{
  $LOGXPATH "${TAG}: Killing $1"
  kill -9 $(pidof $1)
  if [ $? -eq 0 ]; then
     $LOGXPATH "${TAG}: $1 was killed"
  else
     $LOGXPATH "${TAG}: Kill $1 failed"
  fi
}

# Kill logd
kill_process logd

$LOGXPATH "${TAG}: Done"