package Data::9P::Message::Rwalk;

use strict;
use warnings;

use Mo qw(build default is);
use Mo::utils::Array qw(check_array_object);

extends 'Data::9P::Message';

our $VERSION = 0.01;

has wqid => (
	default => [],
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'wqid'.
	check_array_object($self, 'wqid', 'Data::9P::Qid');
	# TODO Check count of items.

	return;
}

1;
