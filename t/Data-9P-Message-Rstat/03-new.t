use strict;
use warnings;

use Data::9P::Message::Rstat;
use Data::9P::Stat;
use Data::9P::Qid;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 3;
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
isa_ok($obj, 'Data::9P::Message::Rstat');

# Test.
eval {
	Data::9P::Message::Rstat->new;
};
is($EVAL_ERROR, "Parameter 'stat' is required.\n",
	"Parameter 'stat' is required.");
clean();
