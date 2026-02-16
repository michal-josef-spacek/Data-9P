use strict;
use warnings;

use Data::9P::Message::Tflush;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Tflush->new(
	'oldtag' => 17,
);
isa_ok($obj, 'Data::9P::Message::Tflush');

# Test.
eval {
	Data::9P::Message::Tflush->new;
};
is($EVAL_ERROR, "Parameter 'oldtag' is required.\n",
	"Parameter 'oldtag' is required.");
clean();
