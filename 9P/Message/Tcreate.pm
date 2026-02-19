package Data::9P::Message::Tcreate;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_required);
use Mo::utils::Binary qw(check_bytes_len);
use Mo::utils::Number::Alias 0.09 qw(check_uint8 check_uint32);

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
	check_uint32($self, 'fid');

	# Check 'mode'.
	check_required($self, 'mode');
	check_uint8($self, 'mode');

	# Check 'name'.
	check_required($self, 'name');
	check_bytes_len($self, 'name', 65533);

	# Check 'perm'.
	check_required($self, 'perm');
	check_uint32($self, 'perm');

	return;
}

1;
