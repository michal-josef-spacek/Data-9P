use strict;
use warnings;

use Data::9P::Message::Tclunk;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Tclunk->new(
	'fid' => 5,
);
my $ret = $obj->fid;
is($ret, 5, 'Get fid (5).');
