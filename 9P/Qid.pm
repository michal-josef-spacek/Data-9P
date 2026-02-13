package Data::9P::Qid;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_required);
use Mo::utils::Number::Range 0.03 qw(check_natural_range);

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
	check_natural_range($self, 'path', 0, 18446744073709551615);

	# Check 'type'.
	check_required($self, 'type');
	check_natural_range($self, 'type', 0, 255);

	# Check 'version'.
	check_required($self, 'version');
	check_natural_range($self, 'version', 0, 4294967295);

	return;
}

1;
