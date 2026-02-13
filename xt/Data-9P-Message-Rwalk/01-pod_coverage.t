use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('Data::9P::Message::Rwalk', 'Data::9P::Message::Rwalk is covered.');
