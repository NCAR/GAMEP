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
# This file was generated from the source file lv.xml
# The source file version number was 1.97, generated on
# 2009/06/15 04:15:33.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::lv;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::root';

sub cldr_version { return "1\.7\.1" }

{
    my $am_pm_abbreviated = [ "AM", "PM" ];
    sub am_pm_abbreviated { return $am_pm_abbreviated }
}
{
    my $date_format_full = "EEEE\,\ y\.\ \'gada\'\ d\.\ MMMM";
    sub date_format_full { return $date_format_full }
}

{
    my $date_format_long = "y\.\ \'gada\'\ d\.\ MMMM";
    sub date_format_long { return $date_format_long }
}

{
    my $date_format_medium = "y\.\ \'gada\'\ d\.\ MMM";
    sub date_format_medium { return $date_format_medium }
}

{
    my $date_format_short = "dd\.MM\.yy";
    sub date_format_short { return $date_format_short }
}

{
    my $day_format_abbreviated = [ "Pr", "Ot", "Tr", "Ce", "Pk", "Se", "Sv" ];
    sub day_format_abbreviated { return $day_format_abbreviated }
}

sub day_format_narrow { $_[0]->day_stand_alone_narrow() }

{
    my $day_format_wide = [ "pirmdiena", "otrdiena", "trešdiena", "ceturtdiena", "piektdiena", "sestdiena", "svētdiena" ];
    sub day_format_wide { return $day_format_wide }
}

sub day_stand_alone_abbreviated { $_[0]->day_format_abbreviated() }

{
    my $day_stand_alone_narrow = [ "P", "O", "T", "C", "P", "S", "S" ];
    sub day_stand_alone_narrow { return $day_stand_alone_narrow }
}

sub day_stand_alone_wide { $_[0]->day_format_wide() }

{
    my $era_abbreviated = [ "p\.m\.ē\.", "m\.ē\." ];
    sub era_abbreviated { return $era_abbreviated }
}
{
    my $era_narrow = [ "p\.m\.ē\.", "m\.ē\." ];
    sub era_narrow { return $era_narrow }
}
{
    my $era_wide = [ "pirms\ mūsu\ ēras", "mūsu\ ērā" ];
    sub era_wide { return $era_wide }
}
{
    my $first_day_of_week = "1";
    sub first_day_of_week { return $first_day_of_week }
}

{
    my $month_format_abbreviated = [ "janv\.", "febr\.", "marts", "apr\.", "maijs", "jūn\.", "jūl\.", "aug\.", "sept\.", "okt\.", "nov\.", "dec\." ];
    sub month_format_abbreviated { return $month_format_abbreviated }
}

sub month_format_narrow { $_[0]->month_stand_alone_narrow() }

{
    my $month_format_wide = [ "janvāris", "februāris", "marts", "aprīlis", "maijs", "jūnijs", "jūlijs", "augusts", "septembris", "oktobris", "novembris", "decembris" ];
    sub month_format_wide { return $month_format_wide }
}

sub month_stand_alone_abbreviated { $_[0]->month_format_abbreviated() }

{
    my $month_stand_alone_narrow = [ "J", "F", "M", "A", "M", "J", "J", "A", "S", "O", "N", "D" ];
    sub month_stand_alone_narrow { return $month_stand_alone_narrow }
}

sub month_stand_alone_wide { $_[0]->month_format_wide() }

{
    my $quarter_format_abbreviated = [ "C1", "C2", "C3", "C4" ];
    sub quarter_format_abbreviated { return $quarter_format_abbreviated }
}

sub quarter_format_narrow { $_[0]->quarter_stand_alone_narrow() }

{
    my $quarter_format_wide = [ "1\.\ ceturksnis", "2\.\ ceturksnis", "3\.\ ceturksnis", "4\.\ ceturksnis" ];
    sub quarter_format_wide { return $quarter_format_wide }
}

sub quarter_stand_alone_abbreviated { $_[0]->quarter_format_abbreviated() }

{
    my $quarter_stand_alone_narrow = [ "1", "2", "3", "4" ];
    sub quarter_stand_alone_narrow { return $quarter_stand_alone_narrow }
}

sub quarter_stand_alone_wide { $_[0]->quarter_format_wide() }

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
    my $_format_for_EEEd = "EEE\,\ d\.";
    sub _format_for_EEEd { return $_format_for_EEEd }
}

{
    my $_format_for_Ed = "EEE\,\ d\.";
    sub _format_for_Ed { return $_format_for_Ed }
}

{
    my $_format_for_H = "H";
    sub _format_for_H { return $_format_for_H }
}

{
    my $_format_for_HHmm = "HH\:mm";
    sub _format_for_HHmm { return $_format_for_HHmm }
}

{
    my $_format_for_HHmmss = "HH\:mm\:ss";
    sub _format_for_HHmmss { return $_format_for_HHmmss }
}

{
    my $_format_for_Hm = "HH\:mm";
    sub _format_for_Hm { return $_format_for_Hm }
}

{
    my $_format_for_M = "L";
    sub _format_for_M { return $_format_for_M }
}

{
    my $_format_for_MEd = "E\,\ dd\.MM\.";
    sub _format_for_MEd { return $_format_for_MEd }
}

{
    my $_format_for_MMM = "LLL";
    sub _format_for_MMM { return $_format_for_MMM }
}

{
    my $_format_for_MMMEd = "E\,\ d\.\ MMM";
    sub _format_for_MMMEd { return $_format_for_MMMEd }
}

{
    my $_format_for_MMMMEd = "E\,\ d\.\ MMMM";
    sub _format_for_MMMMEd { return $_format_for_MMMMEd }
}

{
    my $_format_for_MMMMd = "d\.\ MMMM";
    sub _format_for_MMMMd { return $_format_for_MMMMd }
}

{
    my $_format_for_MMMd = "d\.\ MMM";
    sub _format_for_MMMd { return $_format_for_MMMd }
}

{
    my $_format_for_Md = "dd\.mm\.";
    sub _format_for_Md { return $_format_for_Md }
}

{
    my $_format_for_d = "d";
    sub _format_for_d { return $_format_for_d }
}

{
    my $_format_for_mmss = "mm\:ss";
    sub _format_for_mmss { return $_format_for_mmss }
}

{
    my $_format_for_ms = "mm\:ss";
    sub _format_for_ms { return $_format_for_ms }
}

{
    my $_format_for_y = "y\.\ \'g\'\.";
    sub _format_for_y { return $_format_for_y }
}

{
    my $_format_for_yM = "mm\.yyyy\.";
    sub _format_for_yM { return $_format_for_yM }
}

{
    my $_format_for_yMEd = "EEE\,\ dd\.mm\.yyyy\.";
    sub _format_for_yMEd { return $_format_for_yMEd }
}

{
    my $_format_for_yMMM = "yyyy\.\ \'g\'\.\ MMM";
    sub _format_for_yMMM { return $_format_for_yMMM }
}

{
    my $_format_for_yMMMEd = "EEE\,\ yyyy\.\ \'g\'\.\ dd\.\ MMM";
    sub _format_for_yMMMEd { return $_format_for_yMMMEd }
}

{
    my $_format_for_yMMMM = "y\.\ \'g\'\.\ MMMM";
    sub _format_for_yMMMM { return $_format_for_yMMMM }
}

{
    my $_format_for_yQ = "Q\ yyyy";
    sub _format_for_yQ { return $_format_for_yQ }
}

{
    my $_format_for_yQQQ = "y\ QQQ";
    sub _format_for_yQQQ { return $_format_for_yQQQ }
}

{
    my $_format_for_yyQ = "Q\ yy";
    sub _format_for_yyQ { return $_format_for_yyQ }
}

{
    my $_format_for_yyyy = "y\.\ \'g\'\.";
    sub _format_for_yyyy { return $_format_for_yyyy }
}

{
    my $_available_formats =
        {
          "EEEd" => "EEE\,\ d\.",
          "Ed" => "EEE\,\ d\.",
          "H" => "H",
          "HHmm" => "HH\:mm",
          "HHmmss" => "HH\:mm\:ss",
          "Hm" => "HH\:mm",
          "M" => "L",
          "MEd" => "E\,\ dd\.MM\.",
          "MMM" => "LLL",
          "MMMEd" => "E\,\ d\.\ MMM",
          "MMMMEd" => "E\,\ d\.\ MMMM",
          "MMMMd" => "d\.\ MMMM",
          "MMMd" => "d\.\ MMM",
          "Md" => "dd\.mm\.",
          "d" => "d",
          "mmss" => "mm\:ss",
          "ms" => "mm\:ss",
          "y" => "y\.\ \'g\'\.",
          "yM" => "mm\.yyyy\.",
          "yMEd" => "EEE\,\ dd\.mm\.yyyy\.",
          "yMMM" => "yyyy\.\ \'g\'\.\ MMM",
          "yMMMEd" => "EEE\,\ yyyy\.\ \'g\'\.\ dd\.\ MMM",
          "yMMMM" => "y\.\ \'g\'\.\ MMMM",
          "yQ" => "Q\ yyyy",
          "yQQQ" => "y\ QQQ",
          "yyQ" => "Q\ yy",
          "yyyy" => "y\.\ \'g\'\."
        };
    sub _available_formats { return $_available_formats }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::lv

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'lv' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Latvian.

=head1 DATA

This locale inherits from the L<DateTime::Locale::root> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  pirmdiena
  otrdiena
  trešdiena
  ceturtdiena
  piektdiena
  sestdiena
  svētdiena

=head3 Abbreviated (format)

  Pr
  Ot
  Tr
  Ce
  Pk
  Se
  Sv

=head3 Narrow (format)

  P
  O
  T
  C
  P
  S
  S

=head3 Wide (stand-alone)

  pirmdiena
  otrdiena
  trešdiena
  ceturtdiena
  piektdiena
  sestdiena
  svētdiena

=head3 Abbreviated (stand-alone)

  Pr
  Ot
  Tr
  Ce
  Pk
  Se
  Sv

=head3 Narrow (stand-alone)

  P
  O
  T
  C
  P
  S
  S

=head2 Months

=head3 Wide (format)

  janvāris
  februāris
  marts
  aprīlis
  maijs
  jūnijs
  jūlijs
  augusts
  septembris
  oktobris
  novembris
  decembris

=head3 Abbreviated (format)

  janv.
  febr.
  marts
  apr.
  maijs
  jūn.
  jūl.
  aug.
  sept.
  okt.
  nov.
  dec.

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

  janvāris
  februāris
  marts
  aprīlis
  maijs
  jūnijs
  jūlijs
  augusts
  septembris
  oktobris
  novembris
  decembris

=head3 Abbreviated (stand-alone)

  janv.
  febr.
  marts
  apr.
  maijs
  jūn.
  jūl.
  aug.
  sept.
  okt.
  nov.
  dec.

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

  1. ceturksnis
  2. ceturksnis
  3. ceturksnis
  4. ceturksnis

=head3 Abbreviated (format)

  C1
  C2
  C3
  C4

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  1. ceturksnis
  2. ceturksnis
  3. ceturksnis
  4. ceturksnis

=head3 Abbreviated (stand-alone)

  C1
  C2
  C3
  C4

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  pirms mūsu ēras
  mūsu ērā

=head3 Abbreviated

  p.m.ē.
  m.ē.

=head3 Narrow

  p.m.ē.
  m.ē.

=head2 Date Formats

=head3 Full

   2008-02-05T18:30:30 = otrdiena, 2008. gada 5. februāris
   1995-12-22T09:05:02 = piektdiena, 1995. gada 22. decembris
  -0010-09-15T04:44:23 = sestdiena, -10. gada 15. septembris

=head3 Long

   2008-02-05T18:30:30 = 2008. gada 5. februāris
   1995-12-22T09:05:02 = 1995. gada 22. decembris
  -0010-09-15T04:44:23 = -10. gada 15. septembris

=head3 Medium

   2008-02-05T18:30:30 = 2008. gada 5. febr.
   1995-12-22T09:05:02 = 1995. gada 22. dec.
  -0010-09-15T04:44:23 = -10. gada 15. sept.

=head3 Short

   2008-02-05T18:30:30 = 05.02.08
   1995-12-22T09:05:02 = 22.12.95
  -0010-09-15T04:44:23 = 15.09.10

=head3 Default

   2008-02-05T18:30:30 = 2008. gada 5. febr.
   1995-12-22T09:05:02 = 1995. gada 22. dec.
  -0010-09-15T04:44:23 = -10. gada 15. sept.

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

   2008-02-05T18:30:30 = otrdiena, 2008. gada 5. februāris 18:30:30 UTC
   1995-12-22T09:05:02 = piektdiena, 1995. gada 22. decembris 09:05:02 UTC
  -0010-09-15T04:44:23 = sestdiena, -10. gada 15. septembris 04:44:23 UTC

=head3 Long

   2008-02-05T18:30:30 = 2008. gada 5. februāris 18:30:30 UTC
   1995-12-22T09:05:02 = 1995. gada 22. decembris 09:05:02 UTC
  -0010-09-15T04:44:23 = -10. gada 15. septembris 04:44:23 UTC

=head3 Medium

   2008-02-05T18:30:30 = 2008. gada 5. febr. 18:30:30
   1995-12-22T09:05:02 = 1995. gada 22. dec. 09:05:02
  -0010-09-15T04:44:23 = -10. gada 15. sept. 04:44:23

=head3 Short

   2008-02-05T18:30:30 = 05.02.08 18:30
   1995-12-22T09:05:02 = 22.12.95 09:05
  -0010-09-15T04:44:23 = 15.09.10 04:44

=head3 Default

   2008-02-05T18:30:30 = 2008. gada 5. febr. 18:30:30
   1995-12-22T09:05:02 = 1995. gada 22. dec. 09:05:02
  -0010-09-15T04:44:23 = -10. gada 15. sept. 04:44:23

=head2 Available Formats

=head3 EEEd (EEE, d.)

   2008-02-05T18:30:30 = Ot, 5.
   1995-12-22T09:05:02 = Pk, 22.
  -0010-09-15T04:44:23 = Se, 15.

=head3 Ed (EEE, d.)

   2008-02-05T18:30:30 = Ot, 5.
   1995-12-22T09:05:02 = Pk, 22.
  -0010-09-15T04:44:23 = Se, 15.

=head3 H (H)

   2008-02-05T18:30:30 = 18
   1995-12-22T09:05:02 = 9
  -0010-09-15T04:44:23 = 4

=head3 HHmm (HH:mm)

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 09:05
  -0010-09-15T04:44:23 = 04:44

=head3 HHmmss (HH:mm:ss)

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head3 Hm (HH:mm)

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 09:05
  -0010-09-15T04:44:23 = 04:44

=head3 Hms (H:mm:ss)

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 9:05:02
  -0010-09-15T04:44:23 = 4:44:23

=head3 M (L)

   2008-02-05T18:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 MEd (E, dd.MM.)

   2008-02-05T18:30:30 = Ot, 05.02.
   1995-12-22T09:05:02 = Pk, 22.12.
  -0010-09-15T04:44:23 = Se, 15.09.

=head3 MMM (LLL)

   2008-02-05T18:30:30 = febr.
   1995-12-22T09:05:02 = dec.
  -0010-09-15T04:44:23 = sept.

=head3 MMMEd (E, d. MMM)

   2008-02-05T18:30:30 = Ot, 5. febr.
   1995-12-22T09:05:02 = Pk, 22. dec.
  -0010-09-15T04:44:23 = Se, 15. sept.

=head3 MMMMEd (E, d. MMMM)

   2008-02-05T18:30:30 = Ot, 5. februāris
   1995-12-22T09:05:02 = Pk, 22. decembris
  -0010-09-15T04:44:23 = Se, 15. septembris

=head3 MMMMd (d. MMMM)

   2008-02-05T18:30:30 = 5. februāris
   1995-12-22T09:05:02 = 22. decembris
  -0010-09-15T04:44:23 = 15. septembris

=head3 MMMd (d. MMM)

   2008-02-05T18:30:30 = 5. febr.
   1995-12-22T09:05:02 = 22. dec.
  -0010-09-15T04:44:23 = 15. sept.

=head3 Md (dd.mm.)

   2008-02-05T18:30:30 = 05.30.
   1995-12-22T09:05:02 = 22.05.
  -0010-09-15T04:44:23 = 15.44.

=head3 d (d)

   2008-02-05T18:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 hm (h:mm a)

   2008-02-05T18:30:30 = 6:30 PM
   1995-12-22T09:05:02 = 9:05 AM
  -0010-09-15T04:44:23 = 4:44 AM

=head3 hms (h:mm:ss a)

   2008-02-05T18:30:30 = 6:30:30 PM
   1995-12-22T09:05:02 = 9:05:02 AM
  -0010-09-15T04:44:23 = 4:44:23 AM

=head3 mmss (mm:ss)

   2008-02-05T18:30:30 = 30:30
   1995-12-22T09:05:02 = 05:02
  -0010-09-15T04:44:23 = 44:23

=head3 ms (mm:ss)

   2008-02-05T18:30:30 = 30:30
   1995-12-22T09:05:02 = 05:02
  -0010-09-15T04:44:23 = 44:23

=head3 y (y. 'g'.)

   2008-02-05T18:30:30 = 2008. g.
   1995-12-22T09:05:02 = 1995. g.
  -0010-09-15T04:44:23 = -10. g.

=head3 yM (mm.yyyy.)

   2008-02-05T18:30:30 = 30.2008.
   1995-12-22T09:05:02 = 05.1995.
  -0010-09-15T04:44:23 = 44.-010.

=head3 yMEd (EEE, dd.mm.yyyy.)

   2008-02-05T18:30:30 = Ot, 05.30.2008.
   1995-12-22T09:05:02 = Pk, 22.05.1995.
  -0010-09-15T04:44:23 = Se, 15.44.-010.

=head3 yMMM (yyyy. 'g'. MMM)

   2008-02-05T18:30:30 = 2008. g. febr.
   1995-12-22T09:05:02 = 1995. g. dec.
  -0010-09-15T04:44:23 = -010. g. sept.

=head3 yMMMEd (EEE, yyyy. 'g'. dd. MMM)

   2008-02-05T18:30:30 = Ot, 2008. g. 05. febr.
   1995-12-22T09:05:02 = Pk, 1995. g. 22. dec.
  -0010-09-15T04:44:23 = Se, -010. g. 15. sept.

=head3 yMMMM (y. 'g'. MMMM)

   2008-02-05T18:30:30 = 2008. g. februāris
   1995-12-22T09:05:02 = 1995. g. decembris
  -0010-09-15T04:44:23 = -10. g. septembris

=head3 yQ (Q yyyy)

   2008-02-05T18:30:30 = 1 2008
   1995-12-22T09:05:02 = 4 1995
  -0010-09-15T04:44:23 = 3 -010

=head3 yQQQ (y QQQ)

   2008-02-05T18:30:30 = 2008 C1
   1995-12-22T09:05:02 = 1995 C4
  -0010-09-15T04:44:23 = -10 C3

=head3 yyQ (Q yy)

   2008-02-05T18:30:30 = 1 08
   1995-12-22T09:05:02 = 4 95
  -0010-09-15T04:44:23 = 3 10

=head3 yyyy (y. 'g'.)

   2008-02-05T18:30:30 = 2008. g.
   1995-12-22T09:05:02 = 1995. g.
  -0010-09-15T04:44:23 = -10. g.

=head2 Miscellaneous

=head3 Prefers 24 hour time?

Yes

=head3 Local first day of the week

pirmdiena


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
