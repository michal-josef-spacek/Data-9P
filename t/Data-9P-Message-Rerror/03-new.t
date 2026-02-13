use strict;
use warnings;

use Data::9P::Message::Rerror;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Rerror->new(
	'ename' => 'foo',
);
isa_ok($obj, 'Data::9P::Message::Rerror');

# Test.
eval {
	Data::9P::Message::Rerror->new;
};
is($EVAL_ERROR, "Parameter 'ename' is required.\n",
	"Parameter 'ename' is required.");
clean();
