#!/bin/bash
# HT https://support.apple.com/en-us/HT202516
LONGVERSION=$(sw_vers -productVersion)
#Why do people grep | awk ? awk has pattern matching; please stop!
MINOR=$(echo $LONGVERSION | cut -d. -f2)
UPDATE=$(echo $LONGVERSION | cut -d. -f3)

if (( $MINOR < 7 )) ; then
    # BeginingOfTime-10.6
    FLUSH="dscacheutil -flushcache"
elif (( $MINOR < 10 )) ; then
    # 10.7-10.9
    FLUSH="killall -HUP mDNSResponder"
elif (( $MINOR < 11 )) ; then
    # 10.10
    if (( $UPDATE < 4 )) ; then
        # 10.10.0-10.10.3
        FLUSH="discoveryutil mdnsflushcache"
    else
        # 10.10.4+
        FLUSH="killall -HUP mDNSResponder"
    fi
elif (( $MINOR == 11 )) ; then
    # 10.11
    FLUSH="dscacheutil -flushcache"
else
    echo VERSION $LONGVERSION
    FLUSH="killall -HUP mDNSResponder"
    echo "¯\_(ツ)_/¯"
fi

echo "Flushing DNS Cache for $LONGVERSION"
echo "$FLUSH #(งツ)ว"
$FLUSH
