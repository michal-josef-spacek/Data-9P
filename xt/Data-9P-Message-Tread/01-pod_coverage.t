use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('Data::9P::Message::Tread', 'Data::9P::Message::Tread is covered.');
