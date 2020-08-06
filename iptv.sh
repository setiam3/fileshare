#!/bin/bash
# ----------------------------------------------------------------------------------
# @name    : iptv.sh
# @version : 0.1
# @date    : 2020/11/05 06:04 WIB
#
# LICENSE
# ----------------------------------------------------------------------------------
#  The MIT License (MIT)
#  Copyright (c) 2013 Ghozy Arif Fajri <gojigeje@gmail.com>
#
echo "run iptv vidio"
echo ""
iptvdir="/Users/wawa/Downloads"
phppath="/usr/bin/php"
IPTV1="$iptvdir/iptv/m3u/vidio.com/alquran/alquran.php"
IPTV2="$iptvdir/iptv/m3u/vidio.com/beritasatu/beritasatu.php"
IPTV3="$iptvdir/iptv/m3u/vidio.com/daaitv/daai.php"
IPTV4="$iptvdir/iptv/m3u/vidio.com/gtv/gtv.php"
IPTV5="$iptvdir/iptv/m3u/vidio.com/indosiar/indosiar.php"
IPTV6="$iptvdir/iptv/m3u/vidio.com/inewstv/inews.php"
IPTV7="$iptvdir/iptv/m3u/vidio.com/jaktv/jaktv.php"
IPTV8="$iptvdir/iptv/m3u/vidio.com/kompas/kompas.php"
IPTV9="$iptvdir/iptv/m3u/vidio.com/mnctv/mnc.php"
IPTV10="$iptvdir/iptv/m3u/vidio.com/molatv/molatvfree.php"
IPTV11="$iptvdir/iptv/m3u/vidio.com/mytv/mytv.php"
IPTV12="$iptvdir/iptv/m3u/vidio.com/NET.HD/net.php"
IPTV13="$iptvdir/iptv/m3u/vidio.com/ochannel/ochannel.php"
IPTV14="$iptvdir/iptv/m3u/vidio.com/primer/CitraBioskop/bioskop.php"
IPTV15="$iptvdir/iptv/m3u/vidio.com/oshop/oshop.php"
IPTV16="$iptvdir/iptv/m3u/vidio.com/primer/CitraDrama/citradrama.php"
IPTV17="$iptvdir/iptv/m3u/vidio.com/primer/CitraEntertaiment/cent.php"
IPTV18="$iptvdir/iptv/m3u/vidio.com/rcti/rcti.php"
IPTV19="$iptvdir/iptv/m3u/vidio.com/rtv/rtv.php"
IPTV20="$iptvdir/iptv/m3u/vidio.com/sctv/sctv.php"
IPTV21="$iptvdir/iptv/m3u/vidio.com/trans7/trans7.php"
IPTV22="$iptvdir/iptv/m3u/vidio.com/transtv/transtv.php"
IPTV23="$iptvdir/iptv/m3u/vidio.com/tvedu/tvedu.php"
IPTV24="$iptvdir/iptv/m3u/vidio.com/tvri/tvri.php"
IPTV25="$iptvdir/iptv/m3u/vidio.com/uchannel/uchannel.php"

IPTVS=("$IPTV1" "$IPTV2" "$IPTV3" "$IPTV4" "$IPTV5" "$IPTV6" "$IPTV7" "$IPTV8" "$IPTV9" "$IPTV10" "$IPTV11" "$IPTV12" "$IPTV13" "$IPTV14" "$IPTV15" "$IPTV16" "$IPTV17" "$IPTV18" "$IPTV19" "$IPTV20" "$IPTV21" "$IPTV22" "$IPTV23" "$IPTV24" "$IPTV25")
jumlahtv=${#IPTVS[@]}
sleeptime="1"

counter=1
while [ $counter -le $jumlahtv ]
do
  target="IPTV$counter"
  /usr/bin/php ${!target}
  sleep $sleeptime
((counter++))
done
sleep 2
git add .
sleep $sleeptime
git commit -m "updated.."
sleep $sleeptime
git push origin