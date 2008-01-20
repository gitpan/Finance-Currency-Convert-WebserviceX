#!perl -wT
# $Id: /local/CPAN/Finance-Currency-Convert-WebserviceX/t/pod_syntax.t 1262 2007-06-30T21:59:49.377102Z claco  $
use strict;
use warnings;

BEGIN {
    use lib 't/lib';
    use Test::More;

    plan skip_all => 'set TEST_AUTHOR to enable this test' unless $ENV{TEST_AUTHOR};

    eval 'use Test::Pod 1.00';
    plan skip_all => 'Test::Pod 1.00 not installed' if $@;
};

all_pod_files_ok();
