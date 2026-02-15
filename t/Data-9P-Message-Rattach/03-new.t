use strict;
use warnings;

use Data::9P::Message::Rattach;
use Data::9P::Qid;
use English;
use Error::Pure::Utils qw(clean);
use Test::MockObject;
use Test::More 'tests' => 5;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Rattach->new(
	'qid' => Data::9P::Qid->new(
		'path' => 1,
		'type' => 0x80,
		'version' => 0,
	),
);
isa_ok($obj, 'Data::9P::Message::Rattach');

# Test.
eval {
	Data::9P::Message::Rattach->new;
};
is($EVAL_ERROR, "Parameter 'qid' is required.\n",
	"Parameter 'qid' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Rattach->new(
		'qid' => 'bad',
	);
};
is($EVAL_ERROR, "Parameter 'qid' must be a 'Data::9P::Qid' object.\n",
	"Parameter 'qid' must be a 'Data::9P::Qid' object (bad).");
clean();

# Test.
eval {
	Data::9P::Message::Rattach->new(
		'qid' => Test::MockObject->new,
	);
};
is($EVAL_ERROR, "Parameter 'qid' must be a 'Data::9P::Qid' object.\n",
	"Parameter 'qid' must be a 'Data::9P::Qid' object (other object).");
clean();
