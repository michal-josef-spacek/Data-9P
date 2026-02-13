use strict;
use warnings;

use Data::9P::Message::Tread;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Tread->new(
	'count' => 100,
	'fid' => 200,
	'offset' => 300,
	'tag' => 10,
);
my $ret = $obj->count;
is($ret, 100, 'Get count (100).');
