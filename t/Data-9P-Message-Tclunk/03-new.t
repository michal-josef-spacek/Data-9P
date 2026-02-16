use strict;
use warnings;

use Data::9P::Message::Tclunk;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Tclunk->new(
	'fid' => 5,
);
isa_ok($obj, 'Data::9P::Message::Tclunk');

# Test.
eval {
	Data::9P::Message::Tclunk->new;
};
is($EVAL_ERROR, "Parameter 'fid' is required.\n",
	"Parameter 'fid' is required.");
clean();
