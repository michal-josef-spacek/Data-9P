package Data::9P::Message::Tattach;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_required);
use Mo::utils::Number::Alias 0.09 qw(check_uint32);

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
	check_uint32($self, 'afid');

	# Check 'aname'.
	check_required($self, 'aname');
	# TODO Check string, maximum 65535 bytes.

	# Check 'fid'.
	check_required($self, 'fid');
	check_uint32($self, 'fid');

	# Check 'uname'.
	check_required($self, 'uname');
	# TODO Check string, maximum 65535 bytes.

	return;
}

1;
