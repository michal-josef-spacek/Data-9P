package Data::9P::Const;

use base qw(Exporter);
use strict;
use warnings;

use Readonly;

Readonly::Array our @EXPORT_OK => qw($QTDIR $QTAPPEND $QTEXCL $QTMOUNT $QTAUTH $QTTMP $QTSYMLINK $QTFILE);
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
