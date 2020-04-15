# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/RbGX4ET8Nl/asia.  Olson data version 2009u
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Asia::Dushanbe;

use strict;

use Class::Singleton;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Asia::Dushanbe::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY,
60694514688,
DateTime::TimeZone::NEG_INFINITY,
60694531200,
16512,
0,
'LMT'
    ],
    [
60694514688,
60888135600,
60694532688,
60888153600,
18000,
0,
'DUST'
    ],
    [
60888135600,
62490592800,
60888157200,
62490614400,
21600,
0,
'DUST'
    ],
    [
62490592800,
62506400400,
62490618000,
62506425600,
25200,
1,
'DUSST'
    ],
    [
62506400400,
62522128800,
62506422000,
62522150400,
21600,
0,
'DUST'
    ],
    [
62522128800,
62537936400,
62522154000,
62537961600,
25200,
1,
'DUSST'
    ],
    [
62537936400,
62553664800,
62537958000,
62553686400,
21600,
0,
'DUST'
    ],
    [
62553664800,
62569472400,
62553690000,
62569497600,
25200,
1,
'DUSST'
    ],
    [
62569472400,
62585287200,
62569494000,
62585308800,
21600,
0,
'DUST'
    ],
    [
62585287200,
62601019200,
62585312400,
62601044400,
25200,
1,
'DUSST'
    ],
    [
62601019200,
62616744000,
62601040800,
62616765600,
21600,
0,
'DUST'
    ],
    [
62616744000,
62632468800,
62616769200,
62632494000,
25200,
1,
'DUSST'
    ],
    [
62632468800,
62648193600,
62632490400,
62648215200,
21600,
0,
'DUST'
    ],
    [
62648193600,
62663918400,
62648218800,
62663943600,
25200,
1,
'DUSST'
    ],
    [
62663918400,
62679643200,
62663940000,
62679664800,
21600,
0,
'DUST'
    ],
    [
62679643200,
62695368000,
62679668400,
62695393200,
25200,
1,
'DUSST'
    ],
    [
62695368000,
62711092800,
62695389600,
62711114400,
21600,
0,
'DUST'
    ],
    [
62711092800,
62726817600,
62711118000,
62726842800,
25200,
1,
'DUSST'
    ],
    [
62726817600,
62742542400,
62726839200,
62742564000,
21600,
0,
'DUST'
    ],
    [
62742542400,
62758267200,
62742567600,
62758292400,
25200,
1,
'DUSST'
    ],
    [
62758267200,
62773992000,
62758288800,
62774013600,
21600,
0,
'DUST'
    ],
    [
62773992000,
62790321600,
62774017200,
62790346800,
25200,
1,
'DUSST'
    ],
    [
62790321600,
62806046400,
62790343200,
62806068000,
21600,
0,
'DUST'
    ],
    [
62806046400,
62820046800,
62806068000,
62820068400,
21600,
1,
'DUSST'
    ],
    [
62820046800,
DateTime::TimeZone::INFINITY,
62820064800,
DateTime::TimeZone::INFINITY,
18000,
0,
'TJT'
    ],
];

sub olson_version { '2009u' }

sub has_dst_changes { 11 }

sub _max_year { 2019 }

sub _new_instance
{
    return shift->_init( @_, spans => $spans );
}



1;

