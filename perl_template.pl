#!/usr/bin/env perl 

use warnings;
use strict;

use GetOpt::Long;

use const USAGE => <<LOG;

Description:

short explanation what script does

Syntax:

How to run the code
perl $0 <input file> <output file>

LOG

my $inpfile;
my $outfile;
my $help;

GetOpt(
        "in=s"=>\$inpfile,
        "out=s"=>\$outfile,
        "help"=>\$help) or die LOG;

if ($help){
    dir LOG;
}

unless($inpfile && $outfile){
    print STDERR "Input/Output parameters are missing";
    die LOG;
}

