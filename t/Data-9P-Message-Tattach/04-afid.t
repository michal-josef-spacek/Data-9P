use strict;
use warnings;

use Data::9P::Const qw($NOFID);
use Data::9P::Message::Tattach;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Tattach->new(
	'afid' => $NOFID,
	'aname' => '',
	'fid' => 1,
	'uname' => 'nobody',
);
my $ret = $obj->afid;
is($ret, $NOFID, 'Get afid (0x'.(sprintf '%x', $NOFID).').');
