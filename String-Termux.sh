#!/system/xbin/Bash
time=$(date)
blue='\033[34;1m'
green='\033[32;1m'
red='\033[31;1m'
yellow='\033[33;1m'
HOME='/data/data/com.termux/files/home'
clear
neofetch
printf '\n\n\n$green$time\n\n\n'
printf $blue "\n1. Get String File for User\n2. Get String File for Bot$green\n3. Install Kebutuhan$yellow\n4. Clear File$red\n00. Cancel "
read -p "\n????????? : " okl

if [ $okl = 1 ]
then
cd $HOME
python -V
if [ ! -e string_session.py ]; then
    printf  '\nDownloading string_session.py\n';wget https://raw.githubusercontent.com/meareyou/lel_remake_UserBoto/x-sql-extended/string_session.py;printf '\nRunning script...\n';sleep 1;python3 string_session.py
else
    printf  '\nstring_session.py detected... \nrunning existing file\n';sleep 1;python3 string_session.py
fi
fi

if [ $okl = 2 ]
then
cd $HOME;python -V
if [ ! -e string_support_bot.py ]; then
    printf  '\nDownloading string_session.py\n';wget https://raw.githubusercontent.com/meareyou/lel_remake_UserBoto/x-sql-extended/string_support_bot.py;printf '\nRunning script...\n';sleep 1;python3 string_support_bot.py
else
    printf  '\nstring_support_bot.py detected... \nrunning existing file\n';sleep 1;python3 string_support_bot.py
fi
fi

if [ $okl = 3 ]
then
pkg install python -y;pkg install wget -y;cd $HOME;wget https://raw.githubusercontent.com/meareyou/ezrequ/main/requirements.txt;pip install -r requirements.txt
clear
fi

if [ $okl = 4 ]
then
printf 'Clearing not used files';sleep 2;cd $HOME;rm -rf requirements.txt;rm -rf string_session.py;rm -rf string_support_bot.py;clear;logout
fi

if [ $okl = 0 ] || [ $okl = 00 ]
then
cd $HOME;clear;logout
fi
