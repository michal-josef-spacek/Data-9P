package Data::9P::Message::Tauth;

use strict;
use warnings;

use Data::9P::Const qw($NOFID);
use Error::Pure qw(err);
use Mo qw(build is);
use Mo::utils qw(check_required);
use Mo::utils::Binary qw(check_bytes_len);
use Mo::utils::Number::Alias 0.09 qw(check_uint32);

extends 'Data::9P::Message';

our $VERSION = 0.01;

has afid => (
	is => 'ro',
);

has aname => (
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
	if ($self->{'afid'} == $NOFID) {
		err "Parameter 'afid' couldn't contain 0xFFFFFFFF value.";
	}

	# Check 'aname'.
	check_required($self, 'aname');
	check_bytes_len($self, 'aname', 65533);

	# Check 'uname'.
	check_required($self, 'uname');
	check_bytes_len($self, 'uname', 65533);

	return;
}

1;
