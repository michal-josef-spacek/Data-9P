use strict;
use warnings;

use Test::More 'tests' => 3;
use Test::NoWarnings;

BEGIN {

	# Test.
	use_ok('Data::9P::Message::Rwrite');
}

# Test.
require_ok('Data::9P::Message::Rwrite');
