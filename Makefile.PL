
use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME         => 'Catalyst::Plugin::EmailValid',
    VERSION_FROM => 'lib/Catalyst/Plugin/EmailValid.pm',    # finds \$VERSION
    AUTHOR       => 'Franck Cuny (franck.cuny@gmail.com)',
    LICENSE => 'perl',
    ABSTRACT  => 'Email::Valid for Catalyst',
    PREREQ_PM => { 'Test::Simple'     => 0.44,
                   'Email::Valid'     => 0.15,
                   'Catalyst::Engine' => 0,
					'Catalyst::Test' => 0,
					'HTTP::Request::Common' => 0,
					'Test::More' => 0,
    },
);
