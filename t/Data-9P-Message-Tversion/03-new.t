use strict;
use warnings;

use Data::9P::Message::Tversion;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 9;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Tversion->new(
	'msize' => 100,
	'tag' => 10,
	'version' => '2.1.1',
);
isa_ok($obj, 'Data::9P::Message::Tversion');

# Test.
eval {
	Data::9P::Message::Tversion->new(
		'tag' => 10,
		'version' => '2.1.1',
	);
};
is($EVAL_ERROR, "Parameter 'msize' is required.\n",
	"Parameter 'msize' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Tversion->new(
		'msize' => 4294967296,
		'tag' => 10,
		'version' => '2.1.1',
	);
};
is($EVAL_ERROR, "Parameter 'msize' must be a natural number between 0 and 4294967295.\n",
	"Parameter 'msize' must be a natural number between 0 and 4294967295 (4294967296).");
clean();

# Test.
eval {
	Data::9P::Message::Tversion->new(
		'msize' => 'bad',
		'tag' => 10,
		'version' => '2.1.1',
	);
};
is($EVAL_ERROR, "Parameter 'msize' must be a natural number.\n",
	"Parameter 'msize' must be a natural number (bad).");
clean();

# Test.
eval {
	Data::9P::Message::Tversion->new(
		'msize' => 100,
		'version' => '2.1.1',
	);
};
is($EVAL_ERROR, "Parameter 'tag' is required.\n",
	"Parameter 'tag' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Tversion->new(
		'msize' => 100,
		'tag' => 'bad',
		'version' => '2.1.1',
	);
};
is($EVAL_ERROR, "Parameter 'tag' must be a natural number.\n",
	"Parameter 'tag' must be a natural number (bad).");
clean();

# Test.
eval {
	Data::9P::Message::Tversion->new(
		'msize' => 100,
		'tag' => 65536,
		'version' => '2.1.1',
	);
};
is($EVAL_ERROR, "Parameter 'tag' must be a natural number between 0 and 65535.\n",
	"Parameter 'tag' must be a natural number between 0 and 65535 (65536).");
clean();

# Test.
eval {
	Data::9P::Message::Tversion->new(
		'msize' => 100,
		'tag' => 10,
	);
};
is($EVAL_ERROR, "Parameter 'version' is required.\n",
	"Parameter 'version' is required.");
clean();
