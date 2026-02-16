use strict;
use warnings;

use Data::9P::Message::Tauth;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 5;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Tauth->new(
	'afid' => 1,
	'aname' => '',
	'uname' => 'nobody',
);
isa_ok($obj, 'Data::9P::Message::Tauth');

# Test.
eval {
	Data::9P::Message::Tauth->new(
		'aname' => '',
		'uname' => 'nobody',
	);
};
is($EVAL_ERROR, "Parameter 'afid' is required.\n",
	"Parameter 'afid' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Tauth->new(
		'afid' => 1,
		'aname' => '',
	);
};
is($EVAL_ERROR, "Parameter 'uname' is required.\n",
	"Parameter 'uname' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Tauth->new(
		'afid' => 1,
		'uname' => 'nobody',
	);
};
is($EVAL_ERROR, "Parameter 'aname' is required.\n",
	"Parameter 'aname' is required.");
clean();
