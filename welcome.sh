#!/bin/bash

bgFirst=$(tput setab 1) # red
bgSecond=$(tput setab 3) # yellow
fgBlack=$(tput setaf 0) # black
fgFirst=$(tput setaf 1) # red
fgSecond=$(tput setaf 3) # yellow
txBold=$(tput bold)   # bold
txDim=$(tput dim)
txReset=$(tput sgr0)   # reset attributes


echo -ne "${fgFirst}${txDim}]]${txReset}"
echo -ne "${fgFirst}]]${txReset}"

echo -ne "${bgFirst}${fgBlack}]]${txReset}"
echo -ne "${bgFirst}${fgSecond}${txDim}]]${txReset}"
echo -ne "${bgFirst}${fgSecond}]]${txReset}"

echo -ne "${bgSecond}${fgFirst}]]"
echo -ne "${fgBlack}  WELCOME  "
echo -ne "${bgSecond}${fgFirst}[["

echo -ne "${bgFirst}${fgSecond}[[${txReset}"
echo -ne "${bgFirst}${fgSecond}${txDim}[[${txReset}"
echo -ne "${bgFirst}${fgBlack}[[${txReset}"
echo -ne "${fgFirst}[[${txReset}"
echo -ne "${fgFirst}${txDim}[[${txReset}"

echo -e "${txReset}"
echo -ne "${fgSecond}"
uptime
echo -ne "${txReset}"

