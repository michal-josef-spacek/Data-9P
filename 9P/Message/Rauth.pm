package Data::9P::Message::Rauth;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils 0.08 qw(check_isa check_required);

extends 'Data::9P::Message';

our $VERSION = 0.01;

has aqid => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'aqid'.
	check_required($self, 'aqid');
	check_isa($self, 'aqid', 'Data::9P::Qid');

	return;
}

1;
