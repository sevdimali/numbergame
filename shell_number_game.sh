#!/bin/bash
#Linux sade shell eded oyunu
chck=0
rndnum=$((1 + RANDOM % 100))
echo "--------Welcome to Number Game--------"
echo "-                                    -"
echo "- 1 ile 100 arasinda eded daxil edinz -"
echo "-                                    -"
echo "--------------------------------------"
while [ $chck -ne 1  ]
do
read usernum
        if [ $usernum -eq $rndnum ]; then
        echo "Super!!!  TAPDIN!!!"
        chck=1
        fi

        if [ $usernum -lt $rndnum ]; then
        echo "Kicikdir"
        fi

        if [ $usernum -gt $rndnum ]; then
        echo "Boyukdur"
        fi
done
