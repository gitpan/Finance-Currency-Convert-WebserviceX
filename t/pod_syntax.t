#!perl -wT
# $Id: /local/Finance-Currency-Convert-WebserviceX/trunk/t/pod_syntax.t 1606 2007-06-30T22:00:59.041198Z claco  $
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
