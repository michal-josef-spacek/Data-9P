use strict;
use warnings;

use Data::9P::Message::Twalk;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 5;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Twalk->new(
	'fid' => 1,
	'newfid' => 2,
	'wnames' => ['usr', 'bin', 'perl'],
);
isa_ok($obj, 'Data::9P::Message::Twalk');

# Test.
eval {
	Data::9P::Message::Twalk->new(
		'newfid' => 2,
		'wnames' => ['usr', 'bin', 'perl'],
	);
};
is($EVAL_ERROR, "Parameter 'fid' is required.\n",
	"Parameter 'fid' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Twalk->new(
		'fid' => 1,
		'wnames' => ['usr', 'bin', 'perl'],
	);
};
is($EVAL_ERROR, "Parameter 'newfid' is required.\n",
	"Parameter 'newfid' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Twalk->new(
		'fid' => 1,
		'newfid' => 2,
	);
};
is($EVAL_ERROR, "Parameter 'wnames' is required.\n",
	"Parameter 'wnames' is required.");
clean();
