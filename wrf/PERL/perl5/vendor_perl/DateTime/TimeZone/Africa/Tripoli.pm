# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/RbGX4ET8Nl/africa.  Olson data version 2009u
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Africa::Tripoli;

use strict;

use Class::Singleton;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Africa::Tripoli::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY,
60557756836,
DateTime::TimeZone::NEG_INFINITY,
60557760000,
3164,
0,
'LMT'
    ],
    [
60557756836,
61560781200,
60557760436,
61560784800,
3600,
0,
'CET'
    ],
    [
61560781200,
61567596000,
61560788400,
61567603200,
7200,
1,
'CEST'
    ],
    [
61567596000,
61623507600,
61567599600,
61623511200,
3600,
0,
'CET'
    ],
    [
61623507600,
61630754400,
61623514800,
61630761600,
7200,
1,
'CEST'
    ],
    [
61630754400,
61685794800,
61630758000,
61685798400,
3600,
0,
'CET'
    ],
    [
61685794800,
61693826400,
61685802000,
61693833600,
7200,
1,
'CEST'
    ],
    [
61693826400,
61788524400,
61693830000,
61788528000,
3600,
0,
'CET'
    ],
    [
61788524400,
62514367200,
61788531600,
62514374400,
7200,
0,
'EET'
    ],
    [
62514367200,
62522146800,
62514370800,
62522150400,
3600,
0,
'CET'
    ],
    [
62522146800,
62537954400,
62522154000,
62537961600,
7200,
1,
'CEST'
    ],
    [
62537954400,
62553682800,
62537958000,
62553686400,
3600,
0,
'CET'
    ],
    [
62553682800,
62569490400,
62553690000,
62569497600,
7200,
1,
'CEST'
    ],
    [
62569490400,
62585305200,
62569494000,
62585308800,
3600,
0,
'CET'
    ],
    [
62585305200,
62601112800,
62585312400,
62601120000,
7200,
1,
'CEST'
    ],
    [
62601112800,
62617273200,
62601116400,
62617276800,
3600,
0,
'CET'
    ],
    [
62617273200,
62632648800,
62617280400,
62632656000,
7200,
1,
'CEST'
    ],
    [
62632648800,
62648636400,
62632652400,
62648640000,
3600,
0,
'CET'
    ],
    [
62648636400,
62664357600,
62648643600,
62664364800,
7200,
1,
'CEST'
    ],
    [
62664357600,
62679913200,
62664361200,
62679916800,
3600,
0,
'CET'
    ],
    [
62679913200,
62695720800,
62679920400,
62695728000,
7200,
1,
'CEST'
    ],
    [
62695720800,
62711535600,
62695724400,
62711539200,
3600,
0,
'CET'
    ],
    [
62711535600,
62727343200,
62711542800,
62727350400,
7200,
1,
'CEST'
    ],
    [
62727343200,
62743071600,
62727346800,
62743075200,
3600,
0,
'CET'
    ],
    [
62743071600,
62758879200,
62743078800,
62758886400,
7200,
1,
'CEST'
    ],
    [
62758879200,
62777458800,
62758882800,
62777462400,
3600,
0,
'CET'
    ],
    [
62777458800,
62979717600,
62777466000,
62979724800,
7200,
0,
'EET'
    ],
    [
62979717600,
62995791600,
62979721200,
62995795200,
3600,
0,
'CET'
    ],
    [
62995791600,
63011599200,
62995798800,
63011606400,
7200,
1,
'CEST'
    ],
    [
63011599200,
DateTime::TimeZone::INFINITY,
63011606400,
DateTime::TimeZone::INFINITY,
7200,
0,
'EET'
    ],
];

sub olson_version { '2009u' }

sub has_dst_changes { 12 }

sub _max_year { 2019 }

sub _new_instance
{
    return shift->_init( @_, spans => $spans );
}



1;

