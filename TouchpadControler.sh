#!/bin/bash

ts=`synclient -l|grep TouchpadOff`
ts=${ts#*= }
if(("$ts" == 0))
then
synclient TouchpadOff=1
else
synclient TouchpadOff=0
fi
