use strict;
use warnings;

use Data::9P::Message::Rwrite;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Rwrite->new(
	'count' => 6,
);
isa_ok($obj, 'Data::9P::Message::Rwrite');

# Test.
eval {
	Data::9P::Message::Rwrite->new;
};
is($EVAL_ERROR, "Parameter 'count' is required.\n",
	"Parameter 'count' is required.");
clean();
