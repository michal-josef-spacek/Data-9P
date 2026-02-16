use strict;
use warnings;

use Data::9P::Qid;
use Data::9P::Stat;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Stat->new(
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
);
my $ret = $obj->mode;
is($ret, 0644, 'Get mode (0644).');
