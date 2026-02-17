package Data::9P::Message::Rversion;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_required);
use Mo::utils::Number::Alias 0.09 qw(check_uint32);

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
	check_uint32($self, 'msize');

	# Check 'version'.
	check_required($self, 'version');
	# TODO string

	return;
}

1;
