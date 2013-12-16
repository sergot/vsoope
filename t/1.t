#!/usr/bin/perl

use warnings;
use strict;

use Test::More tests => 6;
use Test::Output;

use Animal;
use Animal::Dog;

my $dog = Animal::Dog->new('test', 1);

isa_ok($dog, 'Animal');
can_ok($dog, $_) for qw<say name age>;

is($dog->name, 'test', 'the name of object is valid');

stdout_like sub { $dog = undef; }, qr<dead>, 'prints *dead* when destroyed';
