(

MODPATH=${0%/*}

PROP=`getprop ro.build.version.sdk`
if [ "$PROP" -ge 24 ]; then
  killall audioserver
else
  killall mediaserver
fi

sleep 60

PKG=com.atmos
PID=`pidof $PKG`
if [ $PID ]; then
  echo -17 > /proc/$PID/oom_adj
  echo -1000 > /proc/$PID/oom_score_adj
fi

) 2>/dev/null


