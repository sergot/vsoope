package Animal;

use feature 'say';

sub new {
    my $self = shift;
    my ($name, $age) = @_;

    bless {name => $name, age => $age}, $self;
}

sub DESTROY {
    my $self = shift;
    say $self->{name} . ' is dead... :(';
}

sub name {
    my $self = shift;

    ref $self ? $self->{name} : undef;
}

sub age {
    $_[0]->{age};
}

sub say {
    my $name = $_[0]->{name};
    say "What does $name say?"
}

true;
