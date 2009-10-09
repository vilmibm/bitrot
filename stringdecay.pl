#!/usr/bin/perl

# who  nate smith
# when oct 2009
# what rot away a string
# why  I currently use it to make fliers for a radio show.

use warnings;
use strict;

die "Usage: $0 [[-n levels] [-i input]]\n" if ($#ARGV+1) % 2 != 0;

my %args = @ARGV;
my $levels = delete $args{'-n'} || 15;
my @input  = split //, (delete $args{'-i'} || 'full of sound and fury, signifying nothing');

while ($levels--) {
    print @input, "\n";
    $input[rand int $#input] = chr int rand 100;
} 
