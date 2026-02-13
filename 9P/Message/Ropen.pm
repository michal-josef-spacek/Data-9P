package Data::9P::Message::Ropen;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils 0.08 qw(check_isa check_required);
use Mo::utils::Number::Range 0.03 qw(check_natural_range);

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
	check_natural_range($self, 'iounit', 0, 4294967295);

	# Check 'qid'.
	check_required($self, 'qid');
	check_isa($self, 'qid', 'Data::9P::Qid');

	return;
}

1;
