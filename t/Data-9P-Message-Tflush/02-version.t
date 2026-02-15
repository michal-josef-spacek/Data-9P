use strict;
use warnings;

use Data::9P::Message::Tflush;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Data::9P::Message::Tflush::VERSION, 0.01, 'Version.');
