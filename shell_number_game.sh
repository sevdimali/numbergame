#!/bin/bash
# author: Sevdimali Isayev
# create date: 15/02/2017

chck=0
mycount=0
rndnum=$((1 + RANDOM % 100))
echo "---------------------------------------------------"
echo "- _____   __                 ______               -"
echo "- ___  | / /___  ________ ______  /______________ -"
echo "- __   |/ /_  / / /_  __ __ \_  __ \  _ \_  ___/  -"
echo "- _  /|  / / /_/ /_  / / / / /  /_/ /  __/  /     -"
echo "- /_/ |_/  \__,_/ /_/ /_/ /_//_.___/\___//_/      -"
echo "-                                                 -"
echo "-   _______  _______  __   __  _______            -"
echo "-  |       ||   _   ||  |  | ||       |           -"
echo "-  |    ___||  |_|  ||  |_ | ||    ___|           -"
echo "-  |   | __ |       ||       ||   |___            -"
echo "-  |   ||  ||   _   ||       ||    ___|           -"
echo "-  |   |_| ||  | |  || ||_|| ||   |___            -"
echo "-  |_______||__| |__||_|   |_||_______|           -"
echo "---------------------------------------------------"
echo ""
echo "Please enter number of attempts you wish to try:"
read ua_count
if [ $ua_count -le 0 ]; then
echo "Bye Bye, You entered invalid number"
sleep 1
exit
fi
while [ $chck -ne 1  ]
do
echo "Number:"
read usernum
        if [ $usernum -eq $rndnum ]; then
        echo "Congratulations!!"
        chck=1
        fi

        if [ $usernum -lt $rndnum ]; then
        echo "Less than Computer's number"
        fi

        if [ $usernum -gt $rndnum ]; then
        echo "Greate than Computer's Number"
        fi

        if [ $ua_count -eq $mycount ]; then
        echo "You lost all of your chance, bye bye :))"
        chck=1
        fi
        mycount=$((mycount+1))
done
