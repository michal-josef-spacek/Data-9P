package Data::9P::Message::Rversion;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_required);
use Mo::utils::Number::Range 0.03 qw(check_natural_range);

extends 'Data::9P::Message';

our $VERSION = 0.01;

has msize => (
	is => 'ro',
);

has version => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'msize'.
	check_required($self, 'msize');
	check_natural_range($self, 'msize', 0, 4294967295);

	# Check 'version'.
	check_required($self, 'version');
	# TODO string

	return;
}

1;
