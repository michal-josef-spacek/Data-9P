use strict;
use warnings;

use Data::9P::Const qw($OREAD $OTRUNC);
use Data::9P::Message::Topen;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Topen->new(
	'fid'  => 1,
	'mode' => $OREAD | $OTRUNC,
);
my $ret = $obj->mode;
is($ret, 0x10, 'Get mode (0x10).');
