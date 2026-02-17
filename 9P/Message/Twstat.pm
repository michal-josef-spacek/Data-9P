package Data::9P::Message::Twstat;

use strict;
use warnings;

use Mo qw(build default is);
use Mo::utils 0.08 qw(check_isa check_required);
use Mo::utils::Number::Alias 0.09 qw(check_uint32);

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
	check_uint32($self, 'fid');

	# Check 'stat'.
	check_required($self, 'stat');
	check_isa($self, 'stat', 'Data::9P::Stat');

	return;
}

1;
