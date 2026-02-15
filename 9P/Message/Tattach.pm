package Data::9P::Message::Tattach;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_required);
use Mo::utils::Number::Range 0.03 qw(check_natural_range);

extends 'Data::9P::Message';

our $VERSION = 0.01;

has afid => (
	is => 'ro',
);

has aname => (
	is => 'ro',
);

has fid => (
	is => 'ro',
);

has uname => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'afid'.
	check_required($self, 'afid');
	check_natural_range($self, 'afid', 0, 4294967295);

	# Check 'aname'.
	check_required($self, 'aname');
	# TODO Check string, maximum 65535 bytes.

	# Check 'fid'.
	check_required($self, 'fid');
	check_natural_range($self, 'fid', 0, 4294967295);

	# Check 'uname'.
	check_required($self, 'uname');
	# TODO Check string, maximum 65535 bytes.

	return;
}

1;
