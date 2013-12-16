package Animal::Horse;

use feature 'say';

@ISA = qw<Animal>;

sub say {
    my $name = $_[0]->{name};

    say $name . ' does ihaha';
}
