use strict;
use warnings;

use Data::9P::Message::Rwstat;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Rwstat->new;
isa_ok($obj, 'Data::9P::Message::Rwstat');
