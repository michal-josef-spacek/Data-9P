package Data::9P::Qid;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_required);
use Mo::utils::Number::Alias 0.09 qw(check_uint8 check_uint32 check_uint64);

our $VERSION = 0.01;

has path => (
	is => 'ro',
);

has type => (
	is => 'ro',
);

has version => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'path'.
	check_required($self, 'path');
	check_uint64($self, 'path');

	# Check 'type'.
	check_required($self, 'type');
	check_uint8($self, 'type');

	# Check 'version'.
	check_required($self, 'version');
	check_uint32($self, 'version');

	return;
}

1;
