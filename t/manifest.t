#!perl -wT
# $Id: /local/CPAN/Finance-Currency-Convert-WebserviceX/t/manifest.t 1268 2008-01-20T05:58:09.220555Z claco  $
use strict;
use warnings;

BEGIN {
    use lib 't/lib';
    use Test::More;

    plan skip_all => 'set TEST_AUTHOR to enable this test' unless $ENV{TEST_AUTHOR};
    plan skip_all => 'run make manifest to generate MANIFEST' unless -e 'MANIFEST';

    eval 'use Test::CheckManifest 0.09';
    if($@) {
        plan skip_all => 'Test::CheckManifest 0.09 not installed';
    };
};

ok_manifest({
    exclude => ['/t/var', '/cover_db'],
    filter  => [qr/\.svn/, qr/cover/, qr/Build(.(PL|bat))?/, qr/_build/],
    bool    => 'or'
});
