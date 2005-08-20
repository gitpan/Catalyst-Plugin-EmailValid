package Catalyst::Plugin::EmailValid;

use warnings;
use strict;

use Catalyst::Request;
use Email::Valid;

our $VERSION = 0.011;

=head1 NAME

Catalyst::Plugin::EmailValid - Email::Valid for Catalyst

=head1 SYNOPSIS

    use Catalyst qw/EmailValid/;
    ...
    $c->check_email();
    
=head1 DESCRIPTION

This module determines whether an email address is well-formed.

=cut

=head2 METHOD

=head3 check_email

=cut

sub check_email {
    my $c = shift;
    my $params;
    if ($_[0]) {
        $params = $_[1] ? {@_} : $_[0];
    }
    $c->log->debug('Checking Mail "'.$c->req->params->{email}.'"');
    unless (Email::Valid->address($params ? %$params : $c->req->params->{email})) {
        $c->log->debug('Failed "'.$Email::Valid::Details.'"');
        $c->stash->{error}   = 1;
        $c->stash->{message} = "Email not valid.";
    }
    return $c;
}

=head1 SEE ALSO

L<Catalyst>, L<Email::Valid>

=head1 AUTHOR

Franck Cuny <franck@breizhdev.net>

=head1 COPYRIGHT

This program is free software, you can redistribute it and/or modify it under
the same terms as Perl itself.

=cut

1;