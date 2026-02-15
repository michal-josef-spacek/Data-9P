use strict;
use warnings;

use Data::9P::Const qw($DMDIR $ORDWR);
use Data::9P::Message::Tcreate;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Tcreate->new(
	'fid' => 1,
	'mode' => $ORDWR,
	'name' => 'tmp',
	'perm' => $DMDIR | 0755,
);
my $ret = $obj->mode;
is($ret, 2, 'Get mode (2).');
