use strict;
use warnings;

use Data::9P::Const qw($QTFILE $QTDIR);
use Data::9P::Message::Rwalk;
use Data::9P::Qid;
use Test::More 'tests' => 5;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Rwalk->new(
	'wqid' => [
		Data::9P::Qid->new(
			'path' => 10,
			'type' => $QTDIR,
			'version' => 0,
		),
		Data::9P::Qid->new(
			'path' => 20,
			'type' => $QTFILE,
			'version' => 3,
		),
	],
);
my $ret = $obj->wqid;
is(ref $ret, 'ARRAY', 'Returned structure is array.');
is(@{$ret}, 2, 'Returned items (2).');
isa_ok($ret->[0], 'Data::9P::Qid');
isa_ok($ret->[1], 'Data::9P::Qid');
