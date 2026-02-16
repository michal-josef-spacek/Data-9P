use strict;
use warnings;

use Data::9P::Const qw($QTFILE);
use Data::9P::Message::Ropen;
use Data::9P::Qid;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Ropen->new(
	'iounit' => 8192,
	'qid' => Data::9P::Qid->new(
		'path' => 1001,
		'type' => $QTFILE,
		'version' => 3,
	),
);
isa_ok($obj, 'Data::9P::Message::Ropen');

# Test.
eval {
	Data::9P::Message::Ropen->new(
		'qid' => Data::9P::Qid->new(
			'path' => 1001,
			'type' => $QTFILE,
			'version' => 3,
		),
	);
};
is($EVAL_ERROR, "Parameter 'iounit' is required.\n",
	"Parameter 'iounit' is required.");
clean();

# Test.
eval {
	Data::9P::Message::Ropen->new(
		'iounit' => 8192,
	);
};
is($EVAL_ERROR, "Parameter 'qid' is required.\n",
	"Parameter 'qid' is required.");
clean();
