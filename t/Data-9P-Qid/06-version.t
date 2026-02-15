use strict;
use warnings;

use Data::9P::Qid;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Qid->new(
	'path' => 1,
	'type' => 0x80,
	'version' => 0,
);
my $ret = $obj->version;
is($ret, 0, 'Get version (0).');
