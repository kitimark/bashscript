#!/bin/bash

echo "---- Wait for a minuite!! --- "
./spawn.sh $1
sleep 1;
echo "OK" > spawn.sh
echo "You can start right now!! GO!!"