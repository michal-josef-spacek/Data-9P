use strict;
use warnings;

use Data::9P::Message;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message->new(
	'tag' => 10,
);
my $ret = $obj->tag;
is($ret, 10, 'Get tag (10).');
