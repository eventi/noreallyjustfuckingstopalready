#!/bin/bash
LONGVERSION=$(system_profiler SPSoftwareDataType | awk '/System Version/{print $5}')
MINOR=$(echo $LONGVERSION | cut -d. -f2)
UPDATE=$(echo $LONGVERSION | cut -d. -f3)

if (( $MINOR < 7 )) ; then 
    echo "SNOW LEOPARD"
    FLUSH="dscacheutil -flushcache"
elif (( $MINOR < 10 )) ; then
    echo "Mavericks Lion"
    FLUSH="killall -HUP mDNSResponder"
elif (( $MINOR == 10 )) ; then
    if (( $UPDATE < 4 )) ; then
        FLUSH="discoveryutil mdnsflushcache"
    else
        FLUSH="killall -HUP mDNSResponder"
    fi
else
    echo VERSION $LONGVERSION
    FLUSH="killall -HUP mDNSResponder"
    echo "¯\_(ツ)_/¯"
fi

echo "Flushing DNS Cache for $LONGVERSION"
echo "$FLUSH #(งツ)ว"
$FLUSH
