use strict;
use warnings;

use Data::9P::Message::Twstat;
use Data::9P::Qid;
use Data::9P::Stat;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Twstat->new(
	'fid' => 5,
	'stat' => Data::9P::Stat->new(
		'type' => 0xFFFF,
		'dev' => 0xFFFFFFFF,
		'qid' => Data::9P::Qid->new(
			'type' => 0xFF,
			'version' => 0xFFFFFFFF,
			'path' => 18446744073709551615,
		),
		'mode' => 0644,
		'atime' => 0xFFFFFFFF,
		'mtime' => 0xFFFFFFFF,
		'length' => 18446744073709551615,
		'name' => '',
		'uid' => '',
		'gid' => '',
		'muid' => '',
	),
);
my $ret = $obj->fid;
is($ret, 5, 'Get fid (5).');
