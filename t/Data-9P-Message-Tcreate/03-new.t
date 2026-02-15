use strict;
use warnings;

use Data::9P::Const qw($DMDIR $ORDWR);
use Data::9P::Message::Tcreate;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 6;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Tcreate->new(
	'fid' => 1,
	'mode' => $ORDWR,
	'name' => 'tmp',
	'perm' => $DMDIR | 0755,
);
isa_ok($obj, 'Data::9P::Message::Tcreate');

# Test.
eval {
	Data::9P::Message::Tcreate->new(
		'mode' => $ORDWR,
		'name' => 'tmp',
		'perm' => $DMDIR | 0755,
	);
};
is($EVAL_ERROR, "Parameter 'fid' is required.\n",
	"Parameter 'fid' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Tcreate->new(
		'fid' => 1,
		'name' => 'tmp',
		'perm' => $DMDIR | 0755,
	);
};
is($EVAL_ERROR, "Parameter 'mode' is required.\n",
	"Parameter 'mode' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Tcreate->new(
		'fid' => 1,
		'mode' => $ORDWR,
		'perm' => $DMDIR | 0755,
	);
};
is($EVAL_ERROR, "Parameter 'name' is required.\n",
	"Parameter 'name' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Tcreate->new(
		'fid' => 1,
		'mode' => $ORDWR,
		'name' => 'tmp',
	);
};
is($EVAL_ERROR, "Parameter 'perm' is required.\n",
	"Parameter 'perm' is required.");
clean();
