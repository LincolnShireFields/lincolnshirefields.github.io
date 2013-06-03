#!/usr/bin/env perl

use 5.012;

use Mojo::UserAgent;

my $ua = Mojo::UserAgent->new();
use File::Slurp;

map {
  my $num = $_;
  my $dom = $ua->get( 'www.lincolnshirefields.org/MinutesPrt.aspx?id=' . $num )
                  ->res->dom;
  write_file( "minutes_$num.txt", $dom->find('span#lblMinutes') ) ;
} 1..24
