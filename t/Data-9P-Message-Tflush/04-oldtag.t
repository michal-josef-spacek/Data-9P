use strict;
use warnings;

use Data::9P::Message::Tflush;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Tflush->new(
	'oldtag' => 17,
);
my $ret = $obj->oldtag;
is($ret, 17, 'Get oldtag (17).');
