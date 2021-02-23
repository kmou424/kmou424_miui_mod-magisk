TAG=kill_process
logx "${TAG}: Starting Kill Process"

# Kill Process
function kill_process()
{
  logx "${TAG}: Killing $1"
  kill -9 $(pidof $1)
  if [ $? -eq 0 ]; then
     logx "${TAG}: $1 was killed"
  else
     logx "${TAG}: Kill $1 failed"
  fi
}

# Kill logd
kill_process logd

logx "${TAG}: Done"