use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('Data::9P::Message::Rclunk', 'Data::9P::Message::Rclunk is covered.');
