use strict;
use warnings;

use Data::9P::Const qw($OREAD $OTRUNC);
use Data::9P::Message::Topen;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Topen->new(
	'fid'  => 1,
	'mode' => $OREAD | $OTRUNC,
);
isa_ok($obj, 'Data::9P::Message::Topen');

# Test.
eval {
	Data::9P::Message::Topen->new(
		'mode' => $OREAD | $OTRUNC,
	);
};
is($EVAL_ERROR, "Parameter 'fid' is required.\n",
	"Parameter 'fid' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Topen->new(
		'fid'  => 1,
	);
};
is($EVAL_ERROR, "Parameter 'mode' is required.\n",
	"Parameter 'mode' is required.");
clean();
