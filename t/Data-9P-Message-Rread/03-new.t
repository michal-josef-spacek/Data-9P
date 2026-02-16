use strict;
use warnings;

use Data::9P::Message::Rread;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Rread->new(
	'data' => "Hello world\n",
);
isa_ok($obj, 'Data::9P::Message::Rread');

# Test.
eval {
	Data::9P::Message::Rread->new;
};
is($EVAL_ERROR, "Parameter 'data' is required.\n",
	"Parameter 'data' is required.");
clean();
