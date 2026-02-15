package Data::9P::Message::Rwrite;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_required);
use Mo::utils::Number::Range 0.03 qw(check_natural_range);

extends 'Data::9P::Message';

our $VERSION = 0.01;

has count => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'count'.
	check_required($self, 'count');
	check_natural_range($self, 'count', 0, 4294967295);

	return;
}

1;
