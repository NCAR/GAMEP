# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/RbGX4ET8Nl/australasia.  Olson data version 2009u
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Pacific::Niue;

use strict;

use Class::Singleton;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Pacific::Niue::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY,
59958271180,
DateTime::TimeZone::NEG_INFINITY,
59958230400,
-40780,
0,
'LMT'
    ],
    [
59958271180,
61536108000,
59958230380,
61536067200,
-40800,
0,
'NUT'
    ],
    [
61536108000,
62411772600,
61536066600,
62411731200,
-41400,
0,
'NUT'
    ],
    [
62411772600,
DateTime::TimeZone::INFINITY,
62411733000,
DateTime::TimeZone::INFINITY,
-39600,
0,
'NUT'
    ],
];

sub olson_version { '2009u' }

sub has_dst_changes { 0 }

sub _max_year { 2019 }

sub _new_instance
{
    return shift->_init( @_, spans => $spans );
}



1;

