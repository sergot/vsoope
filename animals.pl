#!/usr/src/perl

use warnings;
use strict;

use feature 'say';

use Animal;
use Animal::Horse;
use Animal::Dog;

my $fox = Animal->new('the fox', 12);
my $horse = Animal::Horse->new('Sasha', 5);
my $dog = Animal::Dog->new('Fred', 2);

say $fox->name . ' is ' . $fox->age;

$fox->say;
$fox = undef;

$horse->say;

if($horse->isa('Animal')) {
    say $horse->name . ' is an Animal';
}

$dog->say;
