package Data::9P::Message::Twstat;

use strict;
use warnings;

use Mo qw(build default is);
use Mo::utils 0.08 qw(check_isa check_required);
use Mo::utils::Number::Range 0.03 qw(check_natural_range);

extends 'Data::9P::Message';

our $VERSION = 0.01;

has fid => (
	is => 'ro',
);

has stat => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'fid'.
	check_required($self, 'fid');
	check_natural_range($self, 'fid', 0, 4294967295);

	# Check 'stat'.
	check_required($self, 'stat');
	check_isa($self, 'stat', 'Data::9P::Stat');

	return;
}

1;
