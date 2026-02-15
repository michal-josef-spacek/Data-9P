use strict;
use warnings;

use Data::9P::Const;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Data::9P::Const::VERSION, 0.01, 'Version.');
