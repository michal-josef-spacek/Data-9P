use strict;
use warnings;

use Data::9P::Message::Twrite;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Twrite->new(
	'data' => "Hello World\n",
	'fid' => 5,
	'offset' => 0,
);
my $ret = $obj->fid;
is($ret, 5, 'Get fid (5).');
