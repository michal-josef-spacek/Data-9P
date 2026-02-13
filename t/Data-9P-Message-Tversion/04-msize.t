use strict;
use warnings;

use Data::9P::Message::Tversion;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Tversion->new(
	'msize' => 100,
	'version' => '2.1.1',
);
my $ret = $obj->msize;
is($ret, 100, 'Get msize (100).');
