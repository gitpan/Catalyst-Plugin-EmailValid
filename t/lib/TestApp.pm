package TestApp;
use strict;
use warnings;

use Catalyst qw/EmailValid/;

__PACKAGE__->config(
    name => 'TestApp',
);

sub index :Path('/') {
    my ($self, $c) = @_;

    $c->response->body( $c->welcome_message );
}

sub check : Local {
	my ($self, $c) = @_;
	$c->check_email();
	if (defined $c->stash->{error} && $c->stash->{error} == 1){
		$c->response->body($c->stash->{message});
	}else{
		$c->response->body("email valid");
	}
}

1;
