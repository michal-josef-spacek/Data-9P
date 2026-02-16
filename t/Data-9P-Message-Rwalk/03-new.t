use strict;
use warnings;

use Data::9P::Const qw($QTFILE $QTDIR);
use Data::9P::Message::Rwalk;
use Data::9P::Qid;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 6;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Rwalk->new(
	'wqid' => [
		Data::9P::Qid->new(
			'path' => 10,
			'type' => $QTDIR,
			'version' => 0,
		),
		Data::9P::Qid->new(
			'path' => 20,
			'type' => $QTFILE,
			'version' => 3,
		),
	],
);
isa_ok($obj, 'Data::9P::Message::Rwalk');

# Test.
$obj = Data::9P::Message::Rwalk->new(
	'wqid' => [],
);
isa_ok($obj, 'Data::9P::Message::Rwalk');

# Test.
$obj = Data::9P::Message::Rwalk->new;
isa_ok($obj, 'Data::9P::Message::Rwalk');

# Test.
eval {
	Data::9P::Message::Rwalk->new(
		'wqid' => 'bad',
	);
};
is($EVAL_ERROR, "Parameter 'wqid' must be a array.\n",
	"Parameter 'wqid' must be a array (scalar).");
clean();

# Test.
eval {
	Data::9P::Message::Rwalk->new(
		'wqid' => ['bad'],
	);
};
is($EVAL_ERROR, "Parameter 'wqid' with array must contain 'Data::9P::Qid' objects.\n",
	"Parameter 'wqid' with array must contain 'Data::9P::Qid' objects (string inside).");
clean();
