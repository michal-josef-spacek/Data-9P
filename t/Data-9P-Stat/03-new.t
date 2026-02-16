use strict;
use warnings;

use Data::9P::Qid;
use Data::9P::Stat;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 13;
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
isa_ok($obj, 'Data::9P::Stat');

# Test.
eval {
	Data::9P::Stat->new(
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
};
is($EVAL_ERROR, "Parameter 'type' is required.\n",
	"Parameter 'type' is required.");
clean();

# Test.
eval {
	Data::9P::Stat->new(
		'type' => 0,
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
};
is($EVAL_ERROR, "Parameter 'dev' is required.\n",
	"Parameter 'dev' is required.");
clean();

# Test.
eval {
	Data::9P::Stat->new(
		'type' => 0,
		'dev' => 0,
		'mode' => 0644,
		'atime' => 0,
		'mtime' => 0,
		'length' => 0,
		'name' => 'file',
		'uid' => 'user',
		'gid' => 'group',
		'muid' => 'user',
	);
};
is($EVAL_ERROR, "Parameter 'qid' is required.\n",
	"Parameter 'qid' is required.");
clean();

# Test.
eval {
	Data::9P::Stat->new(
		'type' => 0,
		'dev' => 0,
		'qid' => Data::9P::Qid->new(
			'type' => 0,
			'version' => 0,
			'path' => 1,
		),
		'atime' => 0,
		'mtime' => 0,
		'length' => 0,
		'name' => 'file',
		'uid' => 'user',
		'gid' => 'group',
		'muid' => 'user',
	);
};
is($EVAL_ERROR, "Parameter 'mode' is required.\n",
	"Parameter 'mode' is required.");
clean();

# Test.
eval {
	Data::9P::Stat->new(
		'type' => 0,
		'dev' => 0,
		'qid' => Data::9P::Qid->new(
			'type' => 0,
			'version' => 0,
			'path' => 1,
		),
		'mode' => 0644,
		'mtime' => 0,
		'length' => 0,
		'name' => 'file',
		'uid' => 'user',
		'gid' => 'group',
		'muid' => 'user',
	);
};
is($EVAL_ERROR, "Parameter 'atime' is required.\n",
	"Parameter 'atime' is required.");
clean();

# Test.
eval {
	Data::9P::Stat->new(
		'type' => 0,
		'dev' => 0,
		'qid' => Data::9P::Qid->new(
			'type' => 0,
			'version' => 0,
			'path' => 1,
		),
		'mode' => 0644,
		'atime' => 0,
		'length' => 0,
		'name' => 'file',
		'uid' => 'user',
		'gid' => 'group',
		'muid' => 'user',
	);
};
is($EVAL_ERROR, "Parameter 'mtime' is required.\n",
	"Parameter 'mtime' is required.");
clean();

# Test.
eval {
	Data::9P::Stat->new(
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
		'name' => 'file',
		'uid' => 'user',
		'gid' => 'group',
		'muid' => 'user',
	);
};
is($EVAL_ERROR, "Parameter 'length' is required.\n",
	"Parameter 'length' is required.");
clean();

# Test.
eval {
	Data::9P::Stat->new(
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
		'uid' => 'user',
		'gid' => 'group',
		'muid' => 'user',
	);
};
is($EVAL_ERROR, "Parameter 'name' is required.\n",
	"Parameter 'name' is required.");
clean();

# Test.
eval {
	Data::9P::Stat->new(
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
		'gid' => 'group',
		'muid' => 'user',
	);
};
is($EVAL_ERROR, "Parameter 'uid' is required.\n",
	"Parameter 'uid' is required.");
clean();

# Test.
eval {
	Data::9P::Stat->new(
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
		'muid' => 'user',
	);
};
is($EVAL_ERROR, "Parameter 'gid' is required.\n",
	"Parameter 'gid' is required.");
clean();

# Test.
eval {
	Data::9P::Stat->new(
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
	);
};
is($EVAL_ERROR, "Parameter 'muid' is required.\n",
	"Parameter 'muid' is required.");
clean();
