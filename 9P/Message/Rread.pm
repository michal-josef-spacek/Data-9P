package Data::9P::Message::Rread;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_required);

extends 'Data::9P::Message';

our $VERSION = 0.01;

has data => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'data'.
	check_required($self, 'data');
	# TODO scalar

	return;
}

1;
