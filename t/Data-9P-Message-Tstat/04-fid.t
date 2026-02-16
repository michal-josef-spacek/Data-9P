use strict;
use warnings;

use Data::9P::Message::Tstat;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Tstat->new(
	'fid' => 1,
);
my $ret = $obj->fid;
is($ret, 1, 'Get fid (1).');
