#!perl -wT
# $Id: /local/CPAN/Finance-Currency-Convert-WebserviceX/t/pod_coverage.t 1262 2007-06-30T21:59:49.377102Z claco  $
use strict;
use warnings;

BEGIN {
    use lib 't/lib';
    use Test::More;

    plan skip_all => 'set TEST_AUTHOR to enable this test' unless $ENV{TEST_AUTHOR};

    eval 'use Test::Pod::Coverage 1.04';
    plan skip_all => 'Test::Pod::Coverage 1.04' if $@;

    eval 'use Pod::Coverage 0.14';
    plan skip_all => 'Pod::Coverage 0.14 not installed' if $@;
};

my $trustme = {
    trustme =>
    [qr/^(new)$/]
};

all_pod_coverage_ok($trustme);
