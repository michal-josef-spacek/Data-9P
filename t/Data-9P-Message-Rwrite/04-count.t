use strict;
use warnings;

use Data::9P::Message::Rwrite;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Rwrite->new(
	'count' => 6,
);
my $ret = $obj->count;
is($ret, 6, 'Get count (6).');
