#!/bin/bash/
## program to setup ssmtp server


echo -n "Enter your Gmail ID (example@gmail.com) : " 
read gmail
echo -n "Enter your App Password : "
read pass
echo hostname=$(hostname) > /etc/ssmtp/ssmtp.conf
echo SERVER=$gmail >> /etc/ssmtp/ssmtp.conf
echo mailhub=smtp.gmail.com:587 >> /etc/ssmtp/ssmtp.conf
echo AuthUser=$gmail >> /etc/ssmtp/ssmtp.conf
echo AuthPass=$pass >> /etc/ssmtp/ssmtp.conf
echo UseTLS=YES >> /etc/ssmtp/ssmtp.conf
echo UseSTARTTLS=YES >> /etc/ssmtp/ssmtp.conf 
echo rewriteDomain=gmail.com >> /etc/ssmtp/ssmtp.conf


