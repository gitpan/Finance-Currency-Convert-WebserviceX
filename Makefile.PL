# $Id: /local/CPAN/Finance-Currency-Convert-WebserviceX/Makefile.PL 1268 2008-01-20T05:58:09.220555Z claco  $
use strict;
use warnings;
use inc::Module::Install 0.65;

name 'Finance-Currency-Convert-WebserviceX';
license 'perl';
perl_version '5.006001';
all_from 'lib/Finance/Currency/Convert/WebserviceX.pm';

requires 'LWP';
requires 'HTTP::Response';

tests 't/*.t t/*/*.t';
clean_files 'Finance-Currency-Convert-WebserviceX-* t/var';

eval {
    system 'pod2text lib/Finance/Currency/Convert/WebserviceX.pm > README';
};

auto_install;
WriteAll;