

use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME         => 'Catalyst::Plugin::EmailValid',
    VERSION_FROM => 'lib/Catalyst/Plugin/EmailValid.pm', # finds \$VERSION
    AUTHOR       => 'Franck Cuny (franck@breizhdev.net)',
    ABSTRACT     => 'Module abstract (<= 44 characters) goes here',
    PREREQ_PM    => {
                     'Test::Simple' => 0.44,
                     'Email::Valid' => 0.15,
                    },
);
