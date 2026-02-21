use strict;
use warnings;

use Data::9P::Const qw(
	$DMDIR $DMAPPEND $DMEXCL $DMMOUNT $DMAUTH $DMTMP
	$NOFID $NOTAG
	$OREAD $OWRITE $ORDWR $OEXEC $OTRUNC $ORCLOSE
	$QTDIR $QTAPPEND $QTEXCL $QTMOUNT $QTAUTH $QTTMP $QTSYMLINK $QTFILE
);
use Test::More 'tests' => 23;
use Test::NoWarnings;

# Test.
is($DMDIR, 0x80000000, 'Constant $DMDIR (0x80000000).');
is($DMAPPEND, 0x40000000, 'Constant $DMAPPEND (0x40000000).');
is($DMEXCL, 0x20000000, 'Constant $DMEXCL (0x20000000).');
is($DMMOUNT, 0x10000000, 'Constant $DMMOUNT (0x10000000).');
is($DMAUTH, 0x08000000, 'Constant $DMAUTH (0x08000000).');
is($DMTMP, 0x04000000, 'Constant $DMTMP (0x04000000).');

# Test.
is($NOFID, 0xFFFFFFFF, 'Constant $NOFID (0xFFFFFFF).');
is($NOTAG, 0xFFFF, 'Constant $NOTAG (0xFFFF).');

# Test.
is($OREAD, 0, 'Constant $OREAD (0).');
is($OWRITE, 1, 'Constant $OWRITE (1).');
is($ORDWR, 2, 'Constant $ORDWR (2).');
is($OEXEC, 3, 'Constant $OEXEC (3).');
is($OTRUNC, 0x10, 'Constant $OTRUNC (0x10).');
is($ORCLOSE, 0x40, 'Constant $ORCLOSE (0x40).');

# Test.
is($QTDIR, 0x80, 'Constant $QTDIR (0x80).');
is($QTAPPEND, 0x40, 'Constant $QTAPPEND (0x40).');
is($QTEXCL, 0x20, 'Constant $QTEXCL (0x20).');
is($QTMOUNT, 0x10, 'Constant $QTMOUNT (0x10).');
is($QTAUTH, 0x08, 'Constant $QTAUTH (0x08).');
is($QTTMP, 0x04, 'Constant $QTTMP (0x04).');
is($QTSYMLINK, 0x02, 'Constant $QTSYMLINK (0x02).');
is($QTFILE, 0x00, 'Constant $QTFILE (0x00).');
