#!/bin/bash/
#
## program to install requirements and setup crontab and mail server


#if  [ "$(uname -a | awk '{print $7}')" == "Debian"  ]; then
#	apt update  && apt install mailutils ssmtp lolcat cron inetutils-ping  -y
#        if [ $? != 0   ] ; then	
#		echo "Try reinstall mailutils ssmtp lolcat cron inetutils-ping then run the script"
#		exit
#	fi
#else	 
#        #echo "This Script supports only for Debian distro"
#	echo "
#	For CentOS :
#                	yum update -y && yum install mailx ssmtp cronie iputils 
#	For Debian based:
#	                apt update  && apt install mailutils ssmtp lolcat cron inetutils-ping  -y
#--> PRESS CTRL+C and install this Requirements
#	"
#        read -p "If you alredy installed then continue by PRESS ENTER" tmp
#fi



c=''
tmp="/var/routerrd/mail-sent-time.txt"
while [ "$c" == '' ] ;
do
	echo
	read -p "Have you already configured your SSMTP(mail server) (y/n) : " c
	[ "$c" == 'y' -o "$c" == "Y" ] && echo You Said that you already configured mail server so skiping SSMTP configuration.....
done

if [ "$c" == "n" -o  "$c" == 'N' ]; then
	echo
	echo -e "--> Generate your 'App Password' in your gmail account" #| lolcat

	echo -e "If you don't know to generate App Password refer this video "
	echo "--> https://youtu.be/rqPmaDxigNY " #| lolcat
	echo ""
	echo -n "Do you have your Gmail "App password" (y/n) : "
	
	read choice


	if [ "$choice" == "y" -o "$choice" == "Y" -o "$choice" == "" ]
	then
		bash setupmailserver.sh
		echo
		echo Setting up Mail Serrver...
		echo
		sleep 1
	else
		echo ""
	        echo "--> Please Generate you Gmail App Password" #| lolcat
	        echo "To generate Gmail App Password"
	        echo "--> Refer : https://youtu.be/rqPmaDxigNY " #| lolcat
		echo ""
		exit
	fi
fi



echo
#echo -n "What is the Time interval to check the router is down or up : "
#read programtime
echo -n "Enter the ip of the router 1 : "
read router1
echo -n "Enter the ip of the router 2 : "
read router2
echo
echo "--> What is the time interval to send the next mail if the router is Still down :" #| lolcat
echo
echo -n "Is the Time interval is in minutes or Seconds (default=M) (M/S) : "
read timeformat
echo

[ "$timeformat" == 's' -o "$timeformat" == 'S' ] && timeformat='S' &&  read -p  "Enter in Seconds from (default 30) (10 to 50) : " mailtime
[ "$timeformat" == 'm' -o "$timeformat" == 'M' -o "$timeformat" == "" ] && timeformat='M' && read -p  "Enter in Minutes form (default 30) (1 to 58) :  " mailtime
[ "$mailtime" == "" ] && mailtime=30

[ -d /var/routerrd ] || mkdir /var/routerrd/
chmod 777 /var/routerrd/
touch $tmp
chmod 777 $tmp
echo 9999 > $tmp
cp -f ./routerrd /bin/

mailid=$(cat /etc/ssmtp/ssmtp.conf | grep AuthUser);mailid=${mailid:9}
pass=$(cat /etc/ssmtp/ssmtp.conf | grep AuthPass);pass=${pass:9}

if [ "$mailid" == "" -o "$pass" == "" ]; then 
	echo "Please enter a valid email ID  and  Password..."
	exit
fi
if [ "$router1" == "" -o "$router2" == "" ]; then 
	echo "Please enter a valid Router ip..." 	
else
	echo
	echo After adding the bellow line to the crontab
	echo "Router state will be automatically checked for each minute"
	echo
	echo "If $router1 or $router2 goes Down mail will be sent to $mailid"
	echo -n "And if the router was not active with in $mailtime "  
        [ "$timeformat" == "M" ] && echo -n "minutes"|| echo -n "seconds" 
        echo -n " then the mail will be sent repeatedly for each $mailtime " 
	[ "$timeformat" == "M" ] && echo -n "minutes" || echo -n "seconds"
	echo -n " until the router states become UP"
	echo 
	echo
	echo "Add the bellow line by typing the command ( sudo crontab -e )"
	echo
	echo
	echo "* * * * * sudo routerrd $router1 $router2 $mailtime '$timeformat'" 
	echo
	echo
fi








