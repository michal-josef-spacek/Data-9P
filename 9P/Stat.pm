package Data::9P::Stat;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils 0.08 qw(check_isa check_required);
use Mo::utils::Number::Range 0.03 qw(check_natural_range);

our $VERSION = 0.01;

has atime => (
	is => 'ro',
);

has dev => (
	is => 'ro',
);

has gid => (
	is => 'ro',
);

has length => (
	is => 'ro',
);

has mode => (
	is => 'ro',
);

has mtime => (
	is => 'ro',
);

has muid => (
	is => 'ro',
);

has name => (
	is => 'ro',
);

has qid => (
	is => 'ro',
);

has type => (
	is => 'ro',
);

has uid => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'atime'.
	check_required($self, 'atime');
	check_natural_range($self, 'atime', 0, 4294967295);

	# Check 'dev'.
	check_required($self, 'dev');
	check_natural_range($self, 'dev', 0, 4294967295);

	# Check 'gid'.
	check_required($self, 'gid');
	# TODO string

	# Check 'length'.
	check_required($self, 'length');
	check_natural_range($self, 'length', 0, 18446744073709551615);

	# Check 'mode'.
	check_required($self, 'mode');
	check_natural_range($self, 'mode', 0, 4294967295);

	# Check 'mtime'.
	check_required($self, 'mtime');
	check_natural_range($self, 'mtime', 0, 4294967295);

	# Check 'muid',
	check_required($self, 'muid');
	# TODO string

	# Check 'name'.
	check_required($self, 'name');
	# TODO string

	# Check 'qid'.
	check_required($self, 'qid');
	check_isa($self, 'qid', 'Data::9P::Qid');

	# Check 'type'.
	check_required($self, 'type');
	check_natural_range($self, 'type', 0, 65535);

	# Check 'uid'.
	check_required($self, 'uid');
	# TODO string

	return;
}

1;
