#!/bin/bash


colorzFirst=(1 1 2 2 4 4 1 2 4 3 5)
colorzSecond=(3 5 3 6 5 6 7 7 7 7 7)
arrayln=${#colorzFirst[*]}
rnd=$((RANDOM % arrayln))
cfirst=${colorzFirst[$rnd]}
csecond=${colorzSecond[$rnd]}

bgFirst=$(tput setab ${cfirst})
bgSecond=$(tput setab ${csecond})
fgBlack=$(tput setaf 0) # black
fgFirst=$(tput setaf ${cfirst})
fgSecond=$(tput setaf ${csecond})
txBold=$(tput bold)   # bold
txDim=$(tput dim)
txReset=$(tput sgr0)   # reset attributes

uptime=$(uptime -s)

echo -ne "${fgFirst}${txDim}]${txReset}"
echo -ne "${fgFirst}]]${txReset}"

echo -ne "${bgFirst}${fgBlack}]]${txReset}"
echo -ne "${bgFirst}${fgSecond}${txDim}]]${txReset}"
echo -ne "${bgFirst}${fgSecond}]]${txReset}"

echo -ne "${bgSecond}${fgFirst}]]"
echo -ne "${fgBlack}  Uptime since ${uptime}  "
echo -ne "${bgSecond}${fgFirst}[["

echo -ne "${bgFirst}${fgSecond}[[${txReset}"
echo -ne "${bgFirst}${fgSecond}${txDim}[[${txReset}"
echo -ne "${bgFirst}${fgBlack}[[${txReset}"
echo -ne "${fgFirst}[[${txReset}"
echo -ne "${fgFirst}${txDim}[${txReset}"

echo -e "${txReset}"

