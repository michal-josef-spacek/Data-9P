use strict;
use warnings;

use Data::9P::Const qw(
	$QTDIR $QTAPPEND $QTEXCL $QTMOUNT $QTAUTH $QTTMP $QTSYMLINK $QTFILE
);
use Test::More 'tests' => 9;
use Test::NoWarnings;

# TODO Constant tests.

# Test.
is($QTDIR, 0x80, 'Constant $QTDIR (0x80).');
is($QTAPPEND, 0x40, 'Constant $QTAPPEND (0x40).');
is($QTEXCL, 0x20, 'Constant $QTEXCL (0x20).');
is($QTMOUNT, 0x10, 'Constant $QTMOUNT (0x10).');
is($QTAUTH, 0x08, 'Constant $QTAUTH (0x08).');
is($QTTMP, 0x04, 'Constant $QTTMP (0x04).');
is($QTSYMLINK, 0x02, 'Constant $QTSYMLINK (0x02).');
is($QTFILE, 0x00, 'Constant $QTFILE (0x00).');
