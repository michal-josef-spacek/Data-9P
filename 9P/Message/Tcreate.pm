package Data::9P::Message::Tcreate;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_required);
use Mo::utils::Number::Range 0.03 qw(check_natural_range);

extends 'Data::9P::Message';

our $VERSION = 0.01;

has fid => (
	is => 'ro',
);

has mode => (
	is => 'ro',
);

has name => (
	is => 'ro',
);

has perm => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'fid'.
	check_required($self, 'fid');
	check_natural_range($self, 'fid', 0, 4294967295);

	# Check 'mode'.
	check_required($self, 'mode');
	check_natural_range($self, 'mode', 0, 255);

	# Check 'name'.
	check_required($self, 'name');
	# TODO Check string, maximum 65535 bytes.

	# Check 'perm'.
	check_required($self, 'perm');
	check_natural_range($self, 'perm', 0, 4294967295);

	return;
}

1;
