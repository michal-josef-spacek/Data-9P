package Data::9P::Message::Rstat;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils 0.08 qw(check_isa check_required);

extends 'Data::9P::Message';

our $VERSION = 0.01;

has stat => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'stat'.
	check_required($self, 'stat');
	check_isa($self, 'stat', 'Data::9P::Stat');

	return;
}

1;
