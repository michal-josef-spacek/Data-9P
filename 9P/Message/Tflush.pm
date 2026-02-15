package Data::9P::Message::Tflush;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_required);
use Mo::utils::Number::Range 0.03 qw(check_natural_range);

extends 'Data::9P::Message';

our $VERSION = 0.01;

has oldtag => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'oldtag'.
	check_required($self, 'oldtag');
	check_natural_range($self, 'oldtag', 0, 65535);

	return;
}

1;
