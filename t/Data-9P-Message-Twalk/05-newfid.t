use strict;
use warnings;

use Data::9P::Message::Twalk;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Twalk->new(
	'fid' => 1,
	'newfid' => 2,
	'wnames' => ['usr', 'bin', 'perl'],
);
my $ret = $obj->newfid;
is($ret, 2, 'Get newfid (2).');
