logx "Starting Kill Process"

# Kill Process
function kill_process()
{
  logx "Killing $1"
  kill -9 $(pidof $1)
  if [ $? -eq 0 ]; then
     logx "Success"
  else
     logx "Failed"
  fi
  done
}

# Kill logd
kill_process logd