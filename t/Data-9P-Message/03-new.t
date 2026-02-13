use strict;
use warnings;

use Data::9P::Message;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 5;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message->new(
	'tag' => 10,
);
isa_ok($obj, 'Data::9P::Message');

# Test.
eval {
	Data::9P::Message->new;
};
is($EVAL_ERROR, "Parameter 'tag' is required.\n",
	"Parameter 'tag' is required.");
clean();

# Test.
eval {
	Data::9P::Message->new(
		'tag' => 'bad',
	);
};
is($EVAL_ERROR, "Parameter 'tag' must be a natural number.\n",
	"Parameter 'tag' must be a natural number (bad).");
clean();

# Test.
eval {
	Data::9P::Message->new(
		'tag' => 65536,
	);
};
is($EVAL_ERROR, "Parameter 'tag' must be a natural number between 0 and 65535.\n",
	"Parameter 'tag' must be a natural number between 0 and 65535 (65536).");
clean();
