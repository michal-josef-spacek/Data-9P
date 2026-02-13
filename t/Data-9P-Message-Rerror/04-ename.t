use strict;
use warnings;

use Data::9P::Message::Rerror;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Rerror->new(
	'ename' => 'foo',
);
my $ret = $obj->ename;
is($ret, 'foo', 'Get ename (foo).');
