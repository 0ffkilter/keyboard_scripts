#/usr/bin/sh

TOGGLE=$HOME/.touchpadtoggle

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    synclient TouchpadOff=1
else
    rm $TOGGLE
    synclient TouchpadOff=0
fi
