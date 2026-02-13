package Data::9P::Message::Rerror;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_required);

extends 'Data::9P::Message';

our $VERSION = 0.01;

has ename => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'ename'.
	check_required($self, 'ename');
	# TODO Check string maximum of bytes for string is 65533 bytes
	# (2 bytes for length). Could be UTF-8 string.

	return;
}

1;
