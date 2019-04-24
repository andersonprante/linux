#!/bin/bash
meminfo=`free -m | grep 'Mem:'`
free=`echo $meminfo | cut -d" " -f7`

maxMem=`free -m | grep 'Mem:' | cut -d" " -f12`
usage=`echo "scale=1;(($free/$maxMem)*100)" | bc -l | cut -d"." -f1`

limit=30

if [ $usage -lt $limit ]; then
  echo -e "<txt><span weight=\"bold\" fgcolor=\"red\">${free}M</span></txt>"
else
  echo -e "<txt><span weight=\"bold\" fgcolor=\"lightgreen\">${free}M</span></txt>"
fi


