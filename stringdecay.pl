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

my %seen = ();

# As long as there is more destruction requested, and every character has not been changed...proceed. 
while ($levels-- and ($#input > scalar keys %seen)) {
    print @input, "\n";
    $input[pick_unseen_num($#input)] = chr ((int rand 94) + 32);
}

sub pick_unseen_num {
    my $max = shift;
    my $guess = int rand $max;

    # If we've already seen this character, try again
    if ($seen{$guess}++) {
        return pick_unseen_num($max);
    }
    else {
        return $guess;
    }
}
