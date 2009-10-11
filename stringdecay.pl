#!/usr/bin/perl

# who  nate smith
# when oct 2009
# what rot away a string
# why  I currently use it to make fliers for a radio show.

use Getopt::Long;           # In core since 5.0
use List::Util 'shuffle';   # In core since 5.8
use warnings;
use strict;

my $levels      = 15;
my $input_str   = 'full of sound and fury, signifying nothing';

GetOptions ("n=i" => \$levels,
            "i=s" => \$input_str,
) || die "Usage: $0 [[-n levels] [-i input]]\n" ;

my @pos = shuffle(0 .. (length $input_str)-1);

# As long as there is more destruction requested, and every character has not been changed...proceed.
while ($levels-- and scalar @pos) {
    print $input_str, "\n";
    substr($input_str, (pop @pos), 1, chr ((int rand 94) + 32) )
}
print $input_str,"\n";
