package Data::9P::Message::Twalk;

use strict;
use warnings;

use Mo qw(build default is);
use Mo::utils qw(check_required);
use Mo::utils::Array qw(check_array);
use Mo::utils::Number::Range 0.03 qw(check_natural_range);

extends 'Data::9P::Message';

our $VERSION = 0.01;

has fid => (
	is => 'ro',
);

has newfid => (
	is => 'ro',
);

has wnames => (
	is => 'ro',
	default => [],
);

sub BUILD {
	my $self = shift;

	# Check 'fid'.
	check_required($self, 'fid');
	check_natural_range($self, 'fid', 0, 4294967295);

	# Check 'newfid'.
	check_required($self, 'newfid');
	check_natural_range($self, 'newfid', 0, 4294967295);

	# Check 'wnames'.
	check_required($self, 'wnames');
	check_array($self, 'wnames');
	# TODO Check maximum of items in wmnames (16)

	return;
}

1;
