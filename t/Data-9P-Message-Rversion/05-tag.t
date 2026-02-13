use strict;
use warnings;

use Data::9P::Message::Rversion;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Rversion->new(
	'msize' => 100,
	'tag' => 10,
	'version' => '2.1.1',
);
my $ret = $obj->tag;
is($ret, 10, 'Get tag (10).');
