#!/usr/bin/env perl
use warnings;
use strict;
use Data::Dumper;
use Test::More;

use Data::Spreadsheet;

# run parse_file_sep()
{
  my $file = "t/input1.csv";
  my $sep = ",";

  my $expect_ref = [[1,2,3],['a','b','c']];

  my $sheet = Data::Spreadsheet->new;
  $sheet->parse_file_sep($file, $sep);
  is_deeply($expect_ref, $sheet->{data});
}

done_testing();
