use strict;
use warnings;

use Data::9P::Const qw($NOFID);
use Data::9P::Message::Tattach;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 6;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Tattach->new(
	'afid' => $NOFID,
	'aname' => '',
	'fid' => 1,
	'uname' => 'nobody',
);
isa_ok($obj, 'Data::9P::Message::Tattach');

# Test.
eval {
	Data::9P::Message::Tattach->new(
		'aname' => '',
		'fid' => 1,
		'uname' => 'nobody',
	);
};
is($EVAL_ERROR, "Parameter 'afid' is required.\n",
	"Parameter 'afid' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Tattach->new(
		'afid' => $NOFID,
		'fid' => 1,
		'uname' => 'nobody',
	);
};
is($EVAL_ERROR, "Parameter 'aname' is required.\n",
	"Parameter 'aname' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Tattach->new(
		'afid' => $NOFID,
		'aname' => '',
		'uname' => 'nobody',
	);
};
is($EVAL_ERROR, "Parameter 'fid' is required.\n",
	"Parameter 'fid' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Tattach->new(
		'afid' => $NOFID,
		'aname' => '',
		'fid' => 1,
	);
};
is($EVAL_ERROR, "Parameter 'uname' is required.\n",
	"Parameter 'uname' is required.");
clean();
