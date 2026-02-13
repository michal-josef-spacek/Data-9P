use strict;
use warnings;

use Test::More 'tests' => 3;
use Test::NoWarnings;

BEGIN {

	# Test.
	use_ok('Data::9P::Message::Tversion');
}

# Test.
require_ok('Data::9P::Message::Tversion');
