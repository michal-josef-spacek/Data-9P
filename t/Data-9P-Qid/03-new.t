use strict;
use warnings;

use Data::9P::Qid;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 5;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Qid->new(
	'path' => 1,
	'type' => 0x80,
	'version' => 0,
);
isa_ok($obj, 'Data::9P::Qid');

# Test.
eval {
	Data::9P::Qid->new(
		'type' => 0x80,
		'version' => 0,
	);
};
is($EVAL_ERROR, "Parameter 'path' is required.\n",
	"Parameter 'path' is required.");
clean();

# Test.
eval {
	Data::9P::Qid->new(
		'path' => 1,
		'version' => 0,
	);
};
is($EVAL_ERROR, "Parameter 'type' is required.\n",
	"Parameter 'type' is required.");
clean();

# Test.
eval {
	Data::9P::Qid->new(
		'path' => 1,
		'type' => 0x80,
	);
};
is($EVAL_ERROR, "Parameter 'version' is required.\n",
	"Parameter 'version' is required.");
clean();
