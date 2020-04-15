###########################################################################
#
# This file is auto-generated by the Perl DateTime Suite locale
# generator (0.05).  This code generator comes with the
# DateTime::Locale distribution in the tools/ directory, and is called
# generate-from-cldr.
#
# This file as generated from the CLDR XML locale data.  See the
# LICENSE.cldr file included in this distribution for license details.
#
# This file was generated from the source file en_IE.xml
# The source file version number was 1.65, generated on
# 2009/06/15 17:12:26.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::en_IE;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::en';

sub cldr_version { return "1\.7\.1" }

{
    my $am_pm_abbreviated = [ "a\.m\.", "p\.m\." ];
    sub am_pm_abbreviated { return $am_pm_abbreviated }
}
{
    my $date_format_full = "EEEE\ d\ MMMM\ y";
    sub date_format_full { return $date_format_full }
}

{
    my $date_format_long = "d\ MMMM\ y";
    sub date_format_long { return $date_format_long }
}

{
    my $date_format_medium = "d\ MMM\ y";
    sub date_format_medium { return $date_format_medium }
}

{
    my $date_format_short = "dd\/MM\/yyyy";
    sub date_format_short { return $date_format_short }
}

{
    my $first_day_of_week = "7";
    sub first_day_of_week { return $first_day_of_week }
}

{
    my $time_format_full = "HH\:mm\:ss\ zzzz";
    sub time_format_full { return $time_format_full }
}

{
    my $time_format_long = "HH\:mm\:ss\ z";
    sub time_format_long { return $time_format_long }
}

{
    my $time_format_medium = "HH\:mm\:ss";
    sub time_format_medium { return $time_format_medium }
}

{
    my $time_format_short = "HH\:mm";
    sub time_format_short { return $time_format_short }
}

{
    my $_format_for_MEd = "E\,\ d\/M";
    sub _format_for_MEd { return $_format_for_MEd }
}

{
    my $_format_for_MMMMd = "d\ MMMM";
    sub _format_for_MMMMd { return $_format_for_MMMMd }
}

{
    my $_format_for_MMdd = "dd\/MM";
    sub _format_for_MMdd { return $_format_for_MMdd }
}

{
    my $_format_for_Md = "d\/M";
    sub _format_for_Md { return $_format_for_Md }
}

{
    my $_format_for_yMEd = "EEE\,\ d\/M\/yyyy";
    sub _format_for_yMEd { return $_format_for_yMEd }
}

{
    my $_format_for_yyyyMM = "MM\/yyyy";
    sub _format_for_yyyyMM { return $_format_for_yyyyMM }
}

{
    my $_format_for_yyyyMMMM = "MMMM\ y";
    sub _format_for_yyyyMMMM { return $_format_for_yyyyMMMM }
}

{
    my $_available_formats =
        {
          "MEd" => "E\,\ d\/M",
          "MMMMd" => "d\ MMMM",
          "MMdd" => "dd\/MM",
          "Md" => "d\/M",
          "yMEd" => "EEE\,\ d\/M\/yyyy",
          "yyyyMM" => "MM\/yyyy",
          "yyyyMMMM" => "MMMM\ y"
        };
    sub _available_formats { return $_available_formats }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::en_IE

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'en_IE' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for English Ireland.

=head1 DATA

This locale inherits from the L<DateTime::Locale::en> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  Monday
  Tuesday
  Wednesday
  Thursday
  Friday
  Saturday
  Sunday

=head3 Abbreviated (format)

  Mon
  Tue
  Wed
  Thu
  Fri
  Sat
  Sun

=head3 Narrow (format)

  M
  T
  W
  T
  F
  S
  S

=head3 Wide (stand-alone)

  Monday
  Tuesday
  Wednesday
  Thursday
  Friday
  Saturday
  Sunday

=head3 Abbreviated (stand-alone)

  Mon
  Tue
  Wed
  Thu
  Fri
  Sat
  Sun

=head3 Narrow (stand-alone)

  M
  T
  W
  T
  F
  S
  S

=head2 Months

=head3 Wide (format)

  January
  February
  March
  April
  May
  June
  July
  August
  September
  October
  November
  December

=head3 Abbreviated (format)

  Jan
  Feb
  Mar
  Apr
  May
  Jun
  Jul
  Aug
  Sep
  Oct
  Nov
  Dec

=head3 Narrow (format)

  J
  F
  M
  A
  M
  J
  J
  A
  S
  O
  N
  D

=head3 Wide (stand-alone)

  January
  February
  March
  April
  May
  June
  July
  August
  September
  October
  November
  December

=head3 Abbreviated (stand-alone)

  Jan
  Feb
  Mar
  Apr
  May
  Jun
  Jul
  Aug
  Sep
  Oct
  Nov
  Dec

=head3 Narrow (stand-alone)

  J
  F
  M
  A
  M
  J
  J
  A
  S
  O
  N
  D

=head2 Quarters

=head3 Wide (format)

  1st quarter
  2nd quarter
  3rd quarter
  4th quarter

=head3 Abbreviated (format)

  Q1
  Q2
  Q3
  Q4

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  1st quarter
  2nd quarter
  3rd quarter
  4th quarter

=head3 Abbreviated (stand-alone)

  Q1
  Q2
  Q3
  Q4

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  Before Christ
  Anno Domini

=head3 Abbreviated

  BC
  AD

=head3 Narrow

  B
  A

=head2 Date Formats

=head3 Full

   2008-02-05T18:30:30 = Tuesday 5 February 2008
   1995-12-22T09:05:02 = Friday 22 December 1995
  -0010-09-15T04:44:23 = Saturday 15 September -10

=head3 Long

   2008-02-05T18:30:30 = 5 February 2008
   1995-12-22T09:05:02 = 22 December 1995
  -0010-09-15T04:44:23 = 15 September -10

=head3 Medium

   2008-02-05T18:30:30 = 5 Feb 2008
   1995-12-22T09:05:02 = 22 Dec 1995
  -0010-09-15T04:44:23 = 15 Sep -10

=head3 Short

   2008-02-05T18:30:30 = 05/02/2008
   1995-12-22T09:05:02 = 22/12/1995
  -0010-09-15T04:44:23 = 15/09/-010

=head3 Default

   2008-02-05T18:30:30 = 5 Feb 2008
   1995-12-22T09:05:02 = 22 Dec 1995
  -0010-09-15T04:44:23 = 15 Sep -10

=head2 Time Formats

=head3 Full

   2008-02-05T18:30:30 = 18:30:30 UTC
   1995-12-22T09:05:02 = 09:05:02 UTC
  -0010-09-15T04:44:23 = 04:44:23 UTC

=head3 Long

   2008-02-05T18:30:30 = 18:30:30 UTC
   1995-12-22T09:05:02 = 09:05:02 UTC
  -0010-09-15T04:44:23 = 04:44:23 UTC

=head3 Medium

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head3 Short

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 09:05
  -0010-09-15T04:44:23 = 04:44

=head3 Default

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head2 Datetime Formats

=head3 Full

   2008-02-05T18:30:30 = Tuesday 5 February 2008 18:30:30 UTC
   1995-12-22T09:05:02 = Friday 22 December 1995 09:05:02 UTC
  -0010-09-15T04:44:23 = Saturday 15 September -10 04:44:23 UTC

=head3 Long

   2008-02-05T18:30:30 = 5 February 2008 18:30:30 UTC
   1995-12-22T09:05:02 = 22 December 1995 09:05:02 UTC
  -0010-09-15T04:44:23 = 15 September -10 04:44:23 UTC

=head3 Medium

   2008-02-05T18:30:30 = 5 Feb 2008 18:30:30
   1995-12-22T09:05:02 = 22 Dec 1995 09:05:02
  -0010-09-15T04:44:23 = 15 Sep -10 04:44:23

=head3 Short

   2008-02-05T18:30:30 = 05/02/2008 18:30
   1995-12-22T09:05:02 = 22/12/1995 09:05
  -0010-09-15T04:44:23 = 15/09/-010 04:44

=head3 Default

   2008-02-05T18:30:30 = 5 Feb 2008 18:30:30
   1995-12-22T09:05:02 = 22 Dec 1995 09:05:02
  -0010-09-15T04:44:23 = 15 Sep -10 04:44:23

=head2 Available Formats

=head3 EEEd (d EEE)

   2008-02-05T18:30:30 = 5 Tue
   1995-12-22T09:05:02 = 22 Fri
  -0010-09-15T04:44:23 = 15 Sat

=head3 Hm (H:mm)

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 9:05
  -0010-09-15T04:44:23 = 4:44

=head3 Hms (H:mm:ss)

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 9:05:02
  -0010-09-15T04:44:23 = 4:44:23

=head3 M (L)

   2008-02-05T18:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 MEd (E, d/M)

   2008-02-05T18:30:30 = Tue, 5/2
   1995-12-22T09:05:02 = Fri, 22/12
  -0010-09-15T04:44:23 = Sat, 15/9

=head3 MMM (LLL)

   2008-02-05T18:30:30 = Feb
   1995-12-22T09:05:02 = Dec
  -0010-09-15T04:44:23 = Sep

=head3 MMMEd (E, MMM d)

   2008-02-05T18:30:30 = Tue, Feb 5
   1995-12-22T09:05:02 = Fri, Dec 22
  -0010-09-15T04:44:23 = Sat, Sep 15

=head3 MMMMEd (E, MMMM d)

   2008-02-05T18:30:30 = Tue, February 5
   1995-12-22T09:05:02 = Fri, December 22
  -0010-09-15T04:44:23 = Sat, September 15

=head3 MMMMd (d MMMM)

   2008-02-05T18:30:30 = 5 February
   1995-12-22T09:05:02 = 22 December
  -0010-09-15T04:44:23 = 15 September

=head3 MMMd (MMM d)

   2008-02-05T18:30:30 = Feb 5
   1995-12-22T09:05:02 = Dec 22
  -0010-09-15T04:44:23 = Sep 15

=head3 MMdd (dd/MM)

   2008-02-05T18:30:30 = 05/02
   1995-12-22T09:05:02 = 22/12
  -0010-09-15T04:44:23 = 15/09

=head3 Md (d/M)

   2008-02-05T18:30:30 = 5/2
   1995-12-22T09:05:02 = 22/12
  -0010-09-15T04:44:23 = 15/9

=head3 d (d)

   2008-02-05T18:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 hm (h:mm a)

   2008-02-05T18:30:30 = 6:30 p.m.
   1995-12-22T09:05:02 = 9:05 a.m.
  -0010-09-15T04:44:23 = 4:44 a.m.

=head3 hms (h:mm:ss a)

   2008-02-05T18:30:30 = 6:30:30 p.m.
   1995-12-22T09:05:02 = 9:05:02 a.m.
  -0010-09-15T04:44:23 = 4:44:23 a.m.

=head3 ms (mm:ss)

   2008-02-05T18:30:30 = 30:30
   1995-12-22T09:05:02 = 05:02
  -0010-09-15T04:44:23 = 44:23

=head3 y (y)

   2008-02-05T18:30:30 = 2008
   1995-12-22T09:05:02 = 1995
  -0010-09-15T04:44:23 = -10

=head3 yM (M/yyyy)

   2008-02-05T18:30:30 = 2/2008
   1995-12-22T09:05:02 = 12/1995
  -0010-09-15T04:44:23 = 9/-010

=head3 yMEd (EEE, d/M/yyyy)

   2008-02-05T18:30:30 = Tue, 5/2/2008
   1995-12-22T09:05:02 = Fri, 22/12/1995
  -0010-09-15T04:44:23 = Sat, 15/9/-010

=head3 yMMM (MMM y)

   2008-02-05T18:30:30 = Feb 2008
   1995-12-22T09:05:02 = Dec 1995
  -0010-09-15T04:44:23 = Sep -10

=head3 yMMMEd (EEE, MMM d, y)

   2008-02-05T18:30:30 = Tue, Feb 5, 2008
   1995-12-22T09:05:02 = Fri, Dec 22, 1995
  -0010-09-15T04:44:23 = Sat, Sep 15, -10

=head3 yMMMM (MMMM y)

   2008-02-05T18:30:30 = February 2008
   1995-12-22T09:05:02 = December 1995
  -0010-09-15T04:44:23 = September -10

=head3 yQ (Q yyyy)

   2008-02-05T18:30:30 = 1 2008
   1995-12-22T09:05:02 = 4 1995
  -0010-09-15T04:44:23 = 3 -010

=head3 yQQQ (QQQ y)

   2008-02-05T18:30:30 = Q1 2008
   1995-12-22T09:05:02 = Q4 1995
  -0010-09-15T04:44:23 = Q3 -10

=head3 yyyyMM (MM/yyyy)

   2008-02-05T18:30:30 = 02/2008
   1995-12-22T09:05:02 = 12/1995
  -0010-09-15T04:44:23 = 09/-010

=head3 yyyyMMMM (MMMM y)

   2008-02-05T18:30:30 = February 2008
   1995-12-22T09:05:02 = December 1995
  -0010-09-15T04:44:23 = September -10

=head2 Miscellaneous

=head3 Prefers 24 hour time?

Yes

=head3 Local first day of the week

Sunday


=head1 SUPPORT

See L<DateTime::Locale>.

=head1 AUTHOR

Dave Rolsky <autarch@urth.org>

=head1 COPYRIGHT

Copyright (c) 2008 David Rolsky. All rights reserved. This program is
free software; you can redistribute it and/or modify it under the same
terms as Perl itself.

This module was generated from data provided by the CLDR project, see
the LICENSE.cldr in this distribution for details on the CLDR data's
license.

=cut
