#!perl -wT
# $Id: convert.t 374 2005-03-10 02:22:31Z claco $
use strict;
use warnings;
use Test::More tests => 10;

BEGIN {
    use_ok('Finance::Currency::Convert::WebserviceX');
};

## return undef is the params are bogus
{
    my $cc = Finance::Currency::Convert::WebserviceX->new;
    isa_ok($cc, 'Finance::Currency::Convert::WebserviceX');

    is($cc->convert(), undef);
    is($cc->convert(1), undef);
    is($cc->convert(1, 'asdf'), undef);
    is($cc->convert(undef, 'USD', 'JPY'), undef);
};

## try a conversion. whos knows that the rate result will be
## but at least it will let us know it's a working connection
{
    my $cc = Finance::Currency::Convert::WebserviceX->new;
    isa_ok($cc, 'Finance::Currency::Convert::WebserviceX');

    isnt($cc->convert(2.00, 'USD', 'JPY'), undef);
};

## make sure we uc the from/to
{
    my $cc = Finance::Currency::Convert::WebserviceX->new;
    isa_ok($cc, 'Finance::Currency::Convert::WebserviceX');

    isnt($cc->convert(2.00, 'usd', 'jpy'), undef);
};