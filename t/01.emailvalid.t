#!/usr/bin/perl -w

use strict;
use Test::More tests => 6;
use HTTP::Request::Common;

use lib ( 't/lib/' );
use Catalyst::Test 'TestApp';

TestApp->setup;

my ( $request, $response, $content );

$request
    = POST( "http://localhost/check", [ email => "franck.cuny\@gmail.com" ] );

ok( $response = request( $request ), 'Request' );
ok( $response->is_success, 'check ok' );

$content = $response->content;
ok( $content eq "email valid", 'email ok' );

$request
    = POST( "http://localhost/check", [ email => "franck.cunygmail.com" ] );

ok( $response = request( $request ), 'Request' );
ok( $response->is_success, 'check ok' );

$content = $response->content;
ok( $content eq "Email not valid.", 'email not ok' );
