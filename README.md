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
[+]--Ping two Routers and send Email if any Router down.

[+]--It will accurately identifies and notifies you in real-time.

[+]--Customization of Email sent time

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
* `cd RouterRD`
* `ls`
* `sudo bash setup.sh`

[+]--Now provide your Email and router information.

[+]--Now it will generate a Single line command and now copy the command and paste it in crontab.

* `sudo crontab -e`

[+]--Now select you editor.

[+]--Now past the command and save it.

[+]--Now your router will automatically checked for each minute.

[+]--You can also use it as a command ( routerrd -h ).

## USAGE OPTIONS [Kali Linux & Ubuntu] :

```
[+]--To use the ( routerrd ) command as mannul follow the instruction bellow.

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

TI       -->  Timei to send mail if the router is still down
              For Minute use ( 2 - 58 )
              For Seconds Use ( 10 - 50 )
'M'      -->  Time in minutes
'S'      -->  Time is seconds

routerrd -h --> to display this usage options

```

## SCREEN SHOTS [GNS3]

<br>
<p align="center">
<img width="50%" src="https://user-images.githubusercontent.com/137751689/268995469-13f84d63-732d-46d5-9e43-37e018989f6a.jpg"/> <br>
<img width="90%" src="https://user-images.githubusercontent.com/137751689/268997229-85325042-a4b1-42f5-87ab-7a54587767db.png"/>
</p>


## OTHER PROJECTS:


## <b>[arp-kill](https://github.com/billy-paul1234/arp-kill)</b> (Man In The Middle Attack Detection Tool)

## <b>[Calculator Vault](https://github.com/billy-paul1234/flutter_calculator_vault)</b> (Calculator Vault App Using Flutter)

## <b>[ResumePdfToJsonOrCsv](https://github.com/billy-paul1234/ResumePdfToJsonOrCsv)</b> ( Convert resume pdf to json or csv )

## CONNECT ME IN:

[![Instagram](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://in.linkedin.com/in/billy-paul-913459270)

[![Instagram](https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:billypaul388@gmail.com)

## WARNING : 
***This tool is only tested on Kali Linux and Ubuntu with GNS3 emulator..***
