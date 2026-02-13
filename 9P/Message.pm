package Data::9P::Message;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_required);
use Mo::utils::Number::Range 0.03 qw(check_natural_range);

our $VERSION = 0.01;

has tag => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'tag'.
	check_required($self, 'tag');
	check_natural_range($self, 'tag', 0, 65535);

	return;
}

1;
