#!/usr/bin/perl

# who  nate smith
# when oct 2009
# what rot away a string
# why  I currently use it to make fliers for a radio show.

use Getopt::Long;
use warnings;
use strict;

my $levels      = 15;
my $input_str   = 'full of sound and fury, signifying nothing';

GetOptions ("n=i" => \$levels,
            "i=s" => \$input_str,
) || die "Usage: $0 [[-n levels] [-i input]]\n" ;

my @input  = split //, $input_str;

while ($levels--) {
    print @input, "\n";
    $input[rand int $#input] = chr ((int rand 94) + 32);
} 
