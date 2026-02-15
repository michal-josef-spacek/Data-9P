package Data::9P::Const;

use base qw(Exporter);
use strict;
use warnings;

use Readonly;

Readonly::Array our @EXPORT_OK => qw(
	$DMDIR $DMAPPEND $DMEXCL $DMMOUNT $DMAUTH $DMTMP
	$NOFID
	$OREAD $OWRITE $ORDWR $OEXEC $OTRUNC $ORCLOSE
	$QTDIR $QTAPPEND $QTEXCL $QTMOUNT $QTAUTH $QTTMP $QTSYMLINK $QTFILE
);

Readonly::Scalar our $DMDIR => 0x80000000;
Readonly::Scalar our $DMAPPEND => 0x40000000;
Readonly::Scalar our $DMEXCL => 0x20000000;
Readonly::Scalar our $DMMOUNT => 0x10000000;
Readonly::Scalar our $DMAUTH => 0x08000000;
Readonly::Scalar our $DMTMP => 0x04000000;

Readonly::Scalar our $NOFID => 0xFFFFFFFF;

Readonly::Scalar our $OREAD => 0;
Readonly::Scalar our $OWRITE => 1;
Readonly::Scalar our $ORDWR => 2;
Readonly::Scalar our $OEXEC => 3;
Readonly::Scalar our $OTRUNC => 0x10;
Readonly::Scalar our $ORCLOSE => 0x40;

Readonly::Scalar our $QTDIR => 0x80;
Readonly::Scalar our $QTAPPEND=> 0x40;
Readonly::Scalar our $QTEXCL=> 0x20;
Readonly::Scalar our $QTMOUNT=> 0x10;
Readonly::Scalar our $QTAUTH=> 0x08;
Readonly::Scalar our $QTTMP=> 0x04;
Readonly::Scalar our $QTSYMLINK=> 0x02;
Readonly::Scalar our $QTFILE=> 0x00;

our $VERSION = 0.01;

1;
