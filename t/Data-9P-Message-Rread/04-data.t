use strict;
use warnings;

use Data::9P::Message::Rread;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Rread->new(
	'data' => "Hello world\n",
);
my $ret = $obj->data;
is($ret, "Hello world\n", 'Get data (Hello world\n).');
