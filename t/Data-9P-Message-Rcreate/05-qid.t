use strict;
use warnings;

use Data::9P::Message::Rcreate;
use Data::9P::Qid;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Rcreate->new(
	'iounit' => 8192,
	'qid' => Data::9P::Qid->new(
		'path' => 1,
		'type' => 0x80,
		'version' => 0,
	),
);
my $ret = $obj->qid;
isa_ok($ret, 'Data::9P::Qid');
