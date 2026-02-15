use strict;
use warnings;

use Data::9P::Message::Rcreate;
use Data::9P::Qid;
use English;
use Error::Pure::Utils qw(clean);
use Test::MockObject;
use Test::More 'tests' => 6;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Rcreate->new(
	'iounit' => 8192,
	'qid' => Data::9P::Qid->new(
		'path' => 1,
		'type' => 0x80,
		'version' => 0,
	),
);
isa_ok($obj, 'Data::9P::Message::Rcreate');

# Test.
eval {
	Data::9P::Message::Rcreate->new(
		'qid' => Data::9P::Qid->new(
			'path' => 1,
			'type' => 0x80,
			'version' => 0,
		),
	);
};
is($EVAL_ERROR, "Parameter 'iounit' is required.\n",
	"Parameter 'iounit' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Rcreate->new(
		'iounit' => 8192,
	);
};
is($EVAL_ERROR, "Parameter 'qid' is required.\n",
	"Parameter 'qid' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Rcreate->new(
		'iounit' => 8192,
		'qid' => 'bad',
	);
};
is($EVAL_ERROR, "Parameter 'qid' must be a 'Data::9P::Qid' object.\n",
	"Parameter 'qid' must be a 'Data::9P::Qid' object (bad).");
clean();

# Test.
eval {
	Data::9P::Message::Rcreate->new(
		'iounit' => 8192,
		'qid' => Test::MockObject->new,
	);
};
is($EVAL_ERROR, "Parameter 'qid' must be a 'Data::9P::Qid' object.\n",
	"Parameter 'qid' must be a 'Data::9P::Qid' object (other object).");
clean();
