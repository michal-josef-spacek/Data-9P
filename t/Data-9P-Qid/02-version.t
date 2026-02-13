use strict;
use warnings;

use Data::9P::Qid;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Data::9P::Qid::VERSION, 0.01, 'Version.');
