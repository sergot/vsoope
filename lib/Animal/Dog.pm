package Animal::Dog;

use feature 'say';

@ISA = qw<Animal>;

my $_what = 'DOG';
our $what = 'dog';

sub say {
    my $name = $_[0]->{name};

    say $name . ' is a ' . $_what . ' does wow, wow!';
}

sub DESTROY {
    my $self = shift;

    $self->SUPER::DESTROY;
    say $self->{name} . ' is going to heaven!';
}
