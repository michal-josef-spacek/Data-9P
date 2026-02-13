package Data::9P::Message::Rattach;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils 0.08 qw(check_isa check_required);

extends 'Data::9P::Message';

our $VERSION = 0.01;

has qid => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'qid'.
	check_required($self, 'qid');
	check_isa($self, 'qid', 'Data::9P::Qid');

	return;
}

1;
