use strict;
use warnings;

use Data::9P::Message::Rauth;
use Data::9P::Qid;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Rauth->new(
	'aqid' => Data::9P::Qid->new(
		'path' => 1,
		'type' => 0x80,
		'version' => 0,
	),
);
isa_ok($obj, 'Data::9P::Message::Rauth');

# Test.
eval {
	Data::9P::Message::Rauth->new;
};
is($EVAL_ERROR, "Parameter 'aqid' is required.\n",
	"Parameter 'aqid' is required.");
clean();
