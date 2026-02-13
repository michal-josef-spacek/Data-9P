use strict;
use warnings;

use Data::9P::Message::Rversion;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 6;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Rversion->new(
	'msize' => 100,
	'version' => '2.1.1',
);
isa_ok($obj, 'Data::9P::Message::Rversion');

# Test.
eval {
	Data::9P::Message::Rversion->new(
		'version' => '2.1.1',
	);
};
is($EVAL_ERROR, "Parameter 'msize' is required.\n",
	"Parameter 'msize' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Rversion->new(
		'msize' => 4294967296,
		'version' => '2.1.1',
	);
};
is($EVAL_ERROR, "Parameter 'msize' must be a natural number between 0 and 4294967295.\n",
	"Parameter 'msize' must be a natural number between 0 and 4294967295 (4294967296).");
clean();

# Test.
eval {
	Data::9P::Message::Rversion->new(
		'msize' => 'bad',
		'version' => '2.1.1',
	);
};
is($EVAL_ERROR, "Parameter 'msize' must be a natural number.\n",
	"Parameter 'msize' must be a natural number (bad).");
clean();

# Test.
eval {
	Data::9P::Message::Rversion->new(
		'msize' => 100,
	);
};
is($EVAL_ERROR, "Parameter 'version' is required.\n",
	"Parameter 'version' is required.");
clean();
