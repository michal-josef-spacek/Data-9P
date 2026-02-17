package Data::9P::Message::Rcreate;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils 0.08 qw(check_isa check_required);
use Mo::utils::Number::Alias 0.09 qw(check_uint32);

extends 'Data::9P::Message';

our $VERSION = 0.01;

has iounit => (
	is => 'ro',
);

has qid => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'iounit'.
	check_required($self, 'iounit');
	check_uint32($self, 'iounit');

	# Check 'qid'.
	check_required($self, 'qid');
	check_isa($self, 'qid', 'Data::9P::Qid');

	return;
}

1;
