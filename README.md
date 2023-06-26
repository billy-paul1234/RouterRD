# RouterRD
Router Redundancy Detector 


## ABOUT TOOL :

RouterRD tool is used to detect the two router state which uses HSRP(Hot Standby Routing Protocol) or VRRP(Virtual Router Redundancy Protocol) and send Email if any router is down.

## AVAILABLE ON :

* Linux

### TESTED ON :

* Kali Linux
* Ubuntu

### REQUIREMENTS :
* internet
* ssmtp
* mailutils
* cron
* inetutils-ping
* storage 400 MB
* Gmail ID
* Gmail App Password

## FEATURES :
* [+] Ping two Routers and send Email if any Router down.

## INSTALLATION [Kali Linux & Ubuntu] :
[+]--Note:- Don't delete any of the scripts

[+]--Now you need internet connection to continue further process...

* `sudo apt-get update -y`
* `sudo apt-get upgrade -y`
* `sudo apt-get install ssmtp -y`
* `sudo apt-get install mailutils -y`
* `sudo apt-get install cron -y`
* `sudo apt-get install inetutils-ping -y`
* `cd $HOME`
* `git clone https://github.com/billy-paul1234/RouterRD.git`
* `ls`
* `cd RouterRD`
* `ls`
* `sudo bash setup.sh`

[+]--Now provide the your Email and router information.

[+]--And it will generate a Single line command paste it in crontab.

* `sudo crontab -e`

[+]--Now past the command

[+]--Now your router will automatically checked for each minute.

[+]--You can also use it as a command routerrd.

## USAGE OPTIONS [Kali Linux & Ubuntu] :

```
[+]--To use the routerrd command as mannul follow the instruction bellow.

Usage:     
           routerrd  [ R1-ip ]    [ R2-ip ]
Example:
           routerrd 192.168.1.2  192.168.1.3                
R1-ip  -->  Router 1 ip address
R2-ip  -->  Router 2 ip address

[+]--If you want to check your router state for each minute, add the line like bellow example by typing the command ( sudo crontab -e  )
[+]--Don't forget to customize your ip and time

Syntax:     
         * * * * * routerrd   [ R1 ip ]     [ R2 ip ]    [ TI ]  [ 'M' or 'S' ]
Example:
         * * * * * routerrd  192.168.1.2   192.168.1.3     20       'M'
         * * * * * routerrd  192.168.1.2   192.168.1.3     50       'S'

TI       -->  Time interval to send mail if the router is still down
              For Minute use ( 2 - 58 )
              For Seconds Use ( 10 - 50 )
'M'      -->  Time in minutes
'S'      -->  Time is seconds

routerrd -h --> to display this discription

```

## SCREEN SHOTS [GNS3]

Comming Soon....
<!--
<br>
<p align="center">
<img width="50%" src="https://user-images.githubusercontent.com/49580304/96563949-6b90ec00-1277-11eb-9c1b-221a31d7c79d.jpg"/>
<img width="45%" src="https://user-images.githubusercontent.com/49580304/96563953-6c298280-1277-11eb-9cf2-828b351168ae.jpg"/>
</p>
-->
## WATCH VIDEO [GNS3]

Comming Soon....

## CONNECT WITH US :

[![Instagram](https://img.shields.io/badge/INSTAGRAM-FOLLOW-red?style=for-the-badge&logo=instagram)]<!--(https://rebrand.ly/insgrm)-->
[![Instagram](https://img.shields.io/badge/LINKEDIN-CONNECT-red?style=for-the-badge&logo=linkedin)]<!--(https://rebrand.ly/linkedinprof)-->
[![Instagram](https://img.shields.io/badge/FACEBOOK-LIKE-red?style=for-the-badge&logo=facebook)]<!--(https://rebrand.ly/fsbpage)-->
[![Instagram](https://img.shields.io/badge/TELEGRAM-CHANNEL-red?style=for-the-badge&logo=telegram)]<!--(https://rebrand.ly/telegramchnl)-->
[![Instagram](https://img.shields.io/badge/WHATSAPP-JOINGROUP-red?style=for-the-badge&logo=whatsapp)]<!--(https://rebrand.ly/hckrgroups)-->


## WARNING : 
***This tool is only tested on Kali Linux and Ubuntu with GNS3 emulator.***
