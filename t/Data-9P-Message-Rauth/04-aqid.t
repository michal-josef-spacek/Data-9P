use strict;
use warnings;

use Data::9P::Const qw($QTAUTH);
use Data::9P::Message::Rauth;
use Data::9P::Qid;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Rauth->new(
	'aqid' => Data::9P::Qid->new(
		'path' => 1,
		'type' => $QTAUTH,
		'version' => 0,
	),
);
my $ret = $obj->aqid;
isa_ok($ret, 'Data::9P::Qid');
