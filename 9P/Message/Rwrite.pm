package Data::9P::Message::Rwrite;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_required);
use Mo::utils::Number::Alias 0.09 qw(check_uint32);

extends 'Data::9P::Message';

our $VERSION = 0.01;

has count => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'count'.
	check_required($self, 'count');
	check_uint32($self, 'count');

	return;
}

1;
