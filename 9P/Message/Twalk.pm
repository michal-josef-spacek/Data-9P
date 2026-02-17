package Data::9P::Message::Twalk;

use strict;
use warnings;

use Mo qw(build default is);
use Mo::utils qw(check_required);
use Mo::utils::Array qw(check_array);
use Mo::utils::Number::Alias 0.09 qw(check_uint32);

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
	check_uint32($self, 'fid');

	# Check 'newfid'.
	check_required($self, 'newfid');
	check_uint32($self, 'newfid');

	# Check 'wnames'.
	check_required($self, 'wnames');
	check_array($self, 'wnames');
	# TODO Check maximum of items in wmnames (16)

	return;
}

1;
