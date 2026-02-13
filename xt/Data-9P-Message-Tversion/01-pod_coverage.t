use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('Data::9P::Message::Tversion', 'Data::9P::Message::Tversion is covered.');
