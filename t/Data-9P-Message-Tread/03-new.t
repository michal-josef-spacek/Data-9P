use strict;
use warnings;

use Data::9P::Message::Tread;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 10;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Tread->new(
	'count' => 100,
	'fid' => 200,
	'offset' => 300,
);
isa_ok($obj, 'Data::9P::Message::Tread');

# Test.
eval {
	Data::9P::Message::Tread->new(
		'fid' => 200,
		'offset' => 300,
	);
};
is($EVAL_ERROR, "Parameter 'count' is required.\n",
	"Parameter 'count' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Tread->new(
		'count' => 4294967296,
		'fid' => 200,
		'offset' => 300,
	);
};
is($EVAL_ERROR, "Parameter 'count' must be a natural number between 0 and 4294967295.\n",
	"Parameter 'count' must be a natural number between 0 and 4294967295 (4294967296).");
clean();

# Test.
eval {
	Data::9P::Message::Tread->new(
		'count' => 'bad',
		'fid' => 200,
		'offset' => 300,
	);
};
is($EVAL_ERROR, "Parameter 'count' must be a natural number.\n",
	"Parameter 'count' must be a natural number (bad).");
clean();

# Test.
eval {
	Data::9P::Message::Tread->new(
		'count' => 100,
		'offset' => 300,
	);
};
is($EVAL_ERROR, "Parameter 'fid' is required.\n",
	"Parameter 'fid' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Tread->new(
		'count' => 100,
		'fid' => 4294967296,
		'offset' => 300,
	);
};
is($EVAL_ERROR, "Parameter 'fid' must be a natural number between 0 and 4294967295.\n",
	"Parameter 'fid' must be a natural number between 0 and 4294967295 (4294967296).");
clean();

# Test.
eval {
	Data::9P::Message::Tread->new(
		'count' => 100,
		'fid' => 'bad',
		'offset' => 300,
	);
};
is($EVAL_ERROR, "Parameter 'fid' must be a natural number.\n",
	"Parameter 'fid' must be a natural number (bad).");
clean();

# Test.
eval {
	Data::9P::Message::Tread->new(
		'count' => 100,
		'fid' => 200,
	);
};
is($EVAL_ERROR, "Parameter 'offset' is required.\n",
	"Parameter 'offset' is required.");
clean();

# XXX Issue with exponential representation of number.
## Test.
#eval {
#	Data::9P::Message::Tread->new(
#		'count' => 100,
#		'fid' => 200,
#		'offset' => 18446744073709551616,
#	);
#};
#is($EVAL_ERROR, "Parameter 'offset' must be a natural number between 0 and 18446744073709551615.\n",
#	"Parameter 'offset' must be a natural number between 0 and 18446744073709551615 (18446744073709551616).");
#clean();

# Test.
eval {
	Data::9P::Message::Tread->new(
		'count' => 100,
		'fid' => 200,
		'offset' => 'bad',
	);
};
is($EVAL_ERROR, "Parameter 'offset' must be a natural number.\n",
	"Parameter 'offset' must be a natural number (bad).");
clean();
