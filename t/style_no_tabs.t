#!perl -wT
# $Id: /local/CPAN/Finance-Currency-Convert-WebserviceX/t/style_no_tabs.t 1262 2007-06-30T21:59:49.377102Z claco  $
use strict;
use warnings;

BEGIN {
    use Test::More;

    plan skip_all => 'set TEST_AUTHOR to enable this test' unless $ENV{TEST_AUTHOR};

    eval 'use Test::NoTabs 0.03';
    plan skip_all => 'Test::NoTabs 0.03 not installed' if $@;
};

all_perl_files_ok('lib');

