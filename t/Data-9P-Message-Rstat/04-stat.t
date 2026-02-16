use strict;
use warnings;

use Data::9P::Message::Rstat;
use Data::9P::Stat;
use Data::9P::Qid;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Rstat->new(
	'stat' => Data::9P::Stat->new(
		'type' => 0,
		'dev' => 0,
		'qid' => Data::9P::Qid->new(
			'type' => 0,
			'version' => 0,
			'path' => 1,
		),
		'mode' => 0644,
		'atime' => 0,
		'mtime' => 0,
		'length' => 0,
		'name' => 'file',
		'uid' => 'user',
		'gid' => 'group',
		'muid' => 'user',
	),
);
my $ret = $obj->stat;
isa_ok($ret, 'Data::9P::Stat');
