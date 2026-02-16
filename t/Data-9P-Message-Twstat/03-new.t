use strict;
use warnings;

use Data::9P::Message::Twstat;
use Data::9P::Qid;
use Data::9P::Stat;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 4;
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
isa_ok($obj, 'Data::9P::Message::Twstat');

# Test.
eval {
	Data::9P::Message::Twstat->new(
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
};
is($EVAL_ERROR, "Parameter 'fid' is required.\n",
	"Parameter 'fid' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Twstat->new(
		'fid' => 5,
	);
};
is($EVAL_ERROR, "Parameter 'stat' is required.\n",
	"Parameter 'stat' is required.");
clean();
