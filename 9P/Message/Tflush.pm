package Data::9P::Message::Tflush;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_required);
use Mo::utils::Number::Alias 0.09 qw(check_uint16);

extends 'Data::9P::Message';

our $VERSION = 0.01;

has oldtag => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'oldtag'.
	check_required($self, 'oldtag');
	check_uint16($self, 'oldtag');

	return;
}

1;
