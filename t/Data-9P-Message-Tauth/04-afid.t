use strict;
use warnings;

use Data::9P::Message::Tauth;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Tauth->new(
	'afid' => 1,
	'aname' => '',
	'uname' => 'nobody',
);
my $ret = $obj->afid;
is($ret, 1, 'Get afid (1).');
