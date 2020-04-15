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
# This file was generated from the source file zh_Hans_SG.xml
# The source file version number was 1.63, generated on
# 2009/06/15 03:46:23.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::zh_Hans_SG;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::zh_Hans';

sub cldr_version { return "1\.7\.1" }

{
    my $date_format_short = "dd\/MM\/yy";
    sub date_format_short { return $date_format_short }
}

{
    my $first_day_of_week = "7";
    sub first_day_of_week { return $first_day_of_week }
}

{
    my $time_format_long = "ahh\:mm\:ssz";
    sub time_format_long { return $time_format_long }
}

{
    my $time_format_short = "ahh\:mm";
    sub time_format_short { return $time_format_short }
}

{
    my $_format_for_Md = "M月d日";
    sub _format_for_Md { return $_format_for_Md }
}

{
    my $_available_formats =
        {
          "Md" => "M月d日"
        };
    sub _available_formats { return $_available_formats }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::zh_Hans_SG

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'zh_Hans_SG' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Chinese Simplified Han Singapore.

=head1 DATA

This locale inherits from the L<DateTime::Locale::zh_Hans> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  星期一
  星期二
  星期三
  星期四
  星期五
  星期六
  星期日

=head3 Abbreviated (format)

  周一
  周二
  周三
  周四
  周五
  周六
  周日

=head3 Narrow (format)

  一
  二
  三
  四
  五
  六
  日

=head3 Wide (stand-alone)

  星期一
  星期二
  星期三
  星期四
  星期五
  星期六
  星期日

=head3 Abbreviated (stand-alone)

  周一
  周二
  周三
  周四
  周五
  周六
  周日

=head3 Narrow (stand-alone)

  一
  二
  三
  四
  五
  六
  日

=head2 Months

=head3 Wide (format)

  1月
  2月
  3月
  4月
  5月
  6月
  7月
  8月
  9月
  10月
  11月
  12月

=head3 Abbreviated (format)

  1月
  2月
  3月
  4月
  5月
  6月
  7月
  8月
  9月
  10月
  11月
  12月

=head3 Narrow (format)

  1月
  2月
  3月
  4月
  5月
  6月
  7月
  8月
  9月
  10月
  11月
  12月

=head3 Wide (stand-alone)

  一月
  二月
  三月
  四月
  五月
  六月
  七月
  八月
  九月
  十月
  十一月
  十二月

=head3 Abbreviated (stand-alone)

  一月
  二月
  三月
  四月
  五月
  六月
  七月
  八月
  九月
  十月
  十一月
  十二月

=head3 Narrow (stand-alone)

  1月
  2月
  3月
  4月
  5月
  6月
  7月
  8月
  9月
  10月
  11月
  12月

=head2 Quarters

=head3 Wide (format)

  第1季度
  第2季度
  第3季度
  第4季度

=head3 Abbreviated (format)

  1季
  2季
  3季
  4季

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  第1季度
  第2季度
  第3季度
  第4季度

=head3 Abbreviated (stand-alone)

  1季
  2季
  3季
  4季

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  公元前
  公元

=head3 Abbreviated

  公元前
  公元

=head3 Narrow

  公元前
  公元

=head2 Date Formats

=head3 Full

   2008-02-05T18:30:30 = 2008年2月5日星期二
   1995-12-22T09:05:02 = 1995年12月22日星期五
  -0010-09-15T04:44:23 = -10年9月15日星期六

=head3 Long

   2008-02-05T18:30:30 = 2008年2月5日
   1995-12-22T09:05:02 = 1995年12月22日
  -0010-09-15T04:44:23 = -10年9月15日

=head3 Medium

   2008-02-05T18:30:30 = 2008-2-5
   1995-12-22T09:05:02 = 1995-12-22
  -0010-09-15T04:44:23 = -010-9-15

=head3 Short

   2008-02-05T18:30:30 = 05/02/08
   1995-12-22T09:05:02 = 22/12/95
  -0010-09-15T04:44:23 = 15/09/10

=head3 Default

   2008-02-05T18:30:30 = 2008-2-5
   1995-12-22T09:05:02 = 1995-12-22
  -0010-09-15T04:44:23 = -010-9-15

=head2 Time Formats

=head3 Full

   2008-02-05T18:30:30 = UTC下午6时30分30秒
   1995-12-22T09:05:02 = UTC上午9时05分02秒
  -0010-09-15T04:44:23 = UTC上午4时44分23秒

=head3 Long

   2008-02-05T18:30:30 = 下午06:30:30UTC
   1995-12-22T09:05:02 = 上午09:05:02UTC
  -0010-09-15T04:44:23 = 上午04:44:23UTC

=head3 Medium

   2008-02-05T18:30:30 = 下午06:30:30
   1995-12-22T09:05:02 = 上午09:05:02
  -0010-09-15T04:44:23 = 上午04:44:23

=head3 Short

   2008-02-05T18:30:30 = 下午06:30
   1995-12-22T09:05:02 = 上午09:05
  -0010-09-15T04:44:23 = 上午04:44

=head3 Default

   2008-02-05T18:30:30 = 下午06:30:30
   1995-12-22T09:05:02 = 上午09:05:02
  -0010-09-15T04:44:23 = 上午04:44:23

=head2 Datetime Formats

=head3 Full

   2008-02-05T18:30:30 = 2008年2月5日星期二UTC下午6时30分30秒
   1995-12-22T09:05:02 = 1995年12月22日星期五UTC上午9时05分02秒
  -0010-09-15T04:44:23 = -10年9月15日星期六UTC上午4时44分23秒

=head3 Long

   2008-02-05T18:30:30 = 2008年2月5日下午06:30:30UTC
   1995-12-22T09:05:02 = 1995年12月22日上午09:05:02UTC
  -0010-09-15T04:44:23 = -10年9月15日上午04:44:23UTC

=head3 Medium

   2008-02-05T18:30:30 = 2008-2-5下午06:30:30
   1995-12-22T09:05:02 = 1995-12-22上午09:05:02
  -0010-09-15T04:44:23 = -010-9-15上午04:44:23

=head3 Short

   2008-02-05T18:30:30 = 05/02/08下午06:30
   1995-12-22T09:05:02 = 22/12/95上午09:05
  -0010-09-15T04:44:23 = 15/09/10上午04:44

=head3 Default

   2008-02-05T18:30:30 = 2008-2-5下午06:30:30
   1995-12-22T09:05:02 = 1995-12-22上午09:05:02
  -0010-09-15T04:44:23 = -010-9-15上午04:44:23

=head2 Available Formats

=head3 EEEd (d EEE)

   2008-02-05T18:30:30 = 5 周二
   1995-12-22T09:05:02 = 22 周五
  -0010-09-15T04:44:23 = 15 周六

=head3 Ed (d日E)

   2008-02-05T18:30:30 = 5日周二
   1995-12-22T09:05:02 = 22日周五
  -0010-09-15T04:44:23 = 15日周六

=head3 H (H时)

   2008-02-05T18:30:30 = 18时
   1995-12-22T09:05:02 = 9时
  -0010-09-15T04:44:23 = 4时

=head3 HHmmss (HH:mm:ss)

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

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

=head3 MEd (M-dE)

   2008-02-05T18:30:30 = 2-5周二
   1995-12-22T09:05:02 = 12-22周五
  -0010-09-15T04:44:23 = 9-15周六

=head3 MMM (LLL)

   2008-02-05T18:30:30 = 二月
   1995-12-22T09:05:02 = 十二月
  -0010-09-15T04:44:23 = 九月

=head3 MMMEd (MMMd日E)

   2008-02-05T18:30:30 = 2月5日周二
   1995-12-22T09:05:02 = 12月22日周五
  -0010-09-15T04:44:23 = 9月15日周六

=head3 MMMMEd (MMMMd日E)

   2008-02-05T18:30:30 = 2月5日周二
   1995-12-22T09:05:02 = 12月22日周五
  -0010-09-15T04:44:23 = 9月15日周六

=head3 MMMMd (MMMMd日)

   2008-02-05T18:30:30 = 2月5日
   1995-12-22T09:05:02 = 12月22日
  -0010-09-15T04:44:23 = 9月15日

=head3 MMMMdd (MMMMdd日)

   2008-02-05T18:30:30 = 2月05日
   1995-12-22T09:05:02 = 12月22日
  -0010-09-15T04:44:23 = 9月15日

=head3 MMMd (MMMd日)

   2008-02-05T18:30:30 = 2月5日
   1995-12-22T09:05:02 = 12月22日
  -0010-09-15T04:44:23 = 9月15日

=head3 MMdd (MM-dd)

   2008-02-05T18:30:30 = 02-05
   1995-12-22T09:05:02 = 12-22
  -0010-09-15T04:44:23 = 09-15

=head3 Md (M月d日)

   2008-02-05T18:30:30 = 2月5日
   1995-12-22T09:05:02 = 12月22日
  -0010-09-15T04:44:23 = 9月15日

=head3 d (d日)

   2008-02-05T18:30:30 = 5日
   1995-12-22T09:05:02 = 22日
  -0010-09-15T04:44:23 = 15日

=head3 hm (ah:mm)

   2008-02-05T18:30:30 = 下午6:30
   1995-12-22T09:05:02 = 上午9:05
  -0010-09-15T04:44:23 = 上午4:44

=head3 hms (ah:mm:ss)

   2008-02-05T18:30:30 = 下午6:30:30
   1995-12-22T09:05:02 = 上午9:05:02
  -0010-09-15T04:44:23 = 上午4:44:23

=head3 ms (mm:ss)

   2008-02-05T18:30:30 = 30:30
   1995-12-22T09:05:02 = 05:02
  -0010-09-15T04:44:23 = 44:23

=head3 y (y年)

   2008-02-05T18:30:30 = 2008年
   1995-12-22T09:05:02 = 1995年
  -0010-09-15T04:44:23 = -10年

=head3 yM (yyyy-M)

   2008-02-05T18:30:30 = 2008-2
   1995-12-22T09:05:02 = 1995-12
  -0010-09-15T04:44:23 = -010-9

=head3 yMEd (y年M月d日，E)

   2008-02-05T18:30:30 = 2008年2月5日，周二
   1995-12-22T09:05:02 = 1995年12月22日，周五
  -0010-09-15T04:44:23 = -10年9月15日，周六

=head3 yMMM (y年MMM)

   2008-02-05T18:30:30 = 2008年2月
   1995-12-22T09:05:02 = 1995年12月
  -0010-09-15T04:44:23 = -10年9月

=head3 yMMMEd (y年MMMd日EEE)

   2008-02-05T18:30:30 = 2008年2月5日周二
   1995-12-22T09:05:02 = 1995年12月22日周五
  -0010-09-15T04:44:23 = -10年9月15日周六

=head3 yMMMM (y年MMMM)

   2008-02-05T18:30:30 = 2008年2月
   1995-12-22T09:05:02 = 1995年12月
  -0010-09-15T04:44:23 = -10年9月

=head3 yMMMd (y年MMMd日)

   2008-02-05T18:30:30 = 2008年2月5日
   1995-12-22T09:05:02 = 1995年12月22日
  -0010-09-15T04:44:23 = -10年9月15日

=head3 yQ (y年QQQ)

   2008-02-05T18:30:30 = 2008年1季
   1995-12-22T09:05:02 = 1995年4季
  -0010-09-15T04:44:23 = -10年3季

=head3 yQQQ (y年QQQ)

   2008-02-05T18:30:30 = 2008年1季
   1995-12-22T09:05:02 = 1995年4季
  -0010-09-15T04:44:23 = -10年3季

=head3 yyMM (yy-MM)

   2008-02-05T18:30:30 = 08-02
   1995-12-22T09:05:02 = 95-12
  -0010-09-15T04:44:23 = 10-09

=head3 yyMMM (yy年MMM)

   2008-02-05T18:30:30 = 08年2月
   1995-12-22T09:05:02 = 95年12月
  -0010-09-15T04:44:23 = 10年9月

=head3 yyQ (yy年第Q季度)

   2008-02-05T18:30:30 = 08年第1季度
   1995-12-22T09:05:02 = 95年第4季度
  -0010-09-15T04:44:23 = 10年第3季度

=head3 yyyy (y年)

   2008-02-05T18:30:30 = 2008年
   1995-12-22T09:05:02 = 1995年
  -0010-09-15T04:44:23 = -10年

=head3 yyyyM (y年M月)

   2008-02-05T18:30:30 = 2008年2月
   1995-12-22T09:05:02 = 1995年12月
  -0010-09-15T04:44:23 = -10年9月

=head3 yyyyMMMM (y年MMMM)

   2008-02-05T18:30:30 = 2008年2月
   1995-12-22T09:05:02 = 1995年12月
  -0010-09-15T04:44:23 = -10年9月

=head2 Miscellaneous

=head3 Prefers 24 hour time?

No

=head3 Local first day of the week

星期日


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
