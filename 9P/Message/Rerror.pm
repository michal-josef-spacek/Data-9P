package Data::9P::Message::Rerror;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_required);
use Mo::utils::Binary qw(check_bytes_len);

extends 'Data::9P::Message';

our $VERSION = 0.01;

has ename => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'ename'.
	check_required($self, 'ename');
	check_bytes_len($self, 'ename', 65533);

	return;
}

1;
