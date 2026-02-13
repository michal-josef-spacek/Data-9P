package Data::9P::Message::Twrite;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_required);
use Mo::utils::Number::Range 0.03 qw(check_natural_range);

extends 'Data::9P::Message';

our $VERSION = 0.01;

has data => (
	is => 'ro',
);

has fid => (
	is => 'ro',
);

has offset => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'data'.
	check_required($self, 'data');
	# TODO Check for scalar.

	# Check 'fid'.
	check_required($self, 'fid');
	check_natural_range($self, 'fid', 0, 4294967295);

	# Check 'offset'.
	check_required($self, 'offset');
	check_natural_range($self, 'offset', 0, 18446744073709551615);

	return;
}

1;
