use strict;
use warnings;

use Data::9P::Message::Rremove;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::9P::Message::Rremove->new;
isa_ok($obj, 'Data::9P::Message::Rremove');
