package Data::9P::Message::Twrite;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_required);
use Mo::utils::Number::Alias 0.09 qw(check_uint32 check_uint64);

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
	check_uint32($self, 'fid');

	# Check 'offset'.
	check_required($self, 'offset');
	check_uint64($self, 'offset');

	return;
}

1;
