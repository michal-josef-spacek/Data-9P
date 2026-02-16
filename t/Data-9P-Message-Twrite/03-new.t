use strict;
use warnings;

use Data::9P::Message::Twrite;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 5;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Twrite->new(
	'data' => "Hello World\n",
	'fid' => 5,
	'offset' => 0,
);
isa_ok($obj, 'Data::9P::Message::Twrite');

# Test.
eval {
	Data::9P::Message::Twrite->new(
		'fid' => 5,
		'offset' => 0,
	);
};
is($EVAL_ERROR, "Parameter 'data' is required.\n",
	"Parameter 'data' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Twrite->new(
		'data' => "Hello World\n",
		'offset' => 0,
	);
};
is($EVAL_ERROR, "Parameter 'fid' is required.\n",
	"Parameter 'fid' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Twrite->new(
		'data' => "Hello World\n",
		'fid' => 5,
	);
};
is($EVAL_ERROR, "Parameter 'offset' is required.\n",
	"Parameter 'offset' is required.");
clean();
