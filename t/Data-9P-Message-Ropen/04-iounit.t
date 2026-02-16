use strict;
use warnings;

use Data::9P::Const qw($QTFILE);
use Data::9P::Message::Ropen;
use Data::9P::Qid;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Ropen->new(
	'iounit' => 8192,
	'qid' => Data::9P::Qid->new(
		'path' => 1001,
		'type' => $QTFILE,
		'version' => 3,
	),
);
my $ret = $obj->iounit;
is($ret, 8192, 'Get iounit (8192).');
