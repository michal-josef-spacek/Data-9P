use strict;
use warnings;

use Data::9P::Message::Tstat;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Tstat->new(
	'fid' => 1,
);
isa_ok($obj, 'Data::9P::Message::Tstat');

# Test.
eval {
	Data::9P::Message::Tstat->new;
};
is($EVAL_ERROR, "Parameter 'fid' is required.\n",
	"Parameter 'fid' is required.");
clean();
