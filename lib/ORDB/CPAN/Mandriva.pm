use 5.008005;
use strict;
use warnings;

package ORDB::CPAN::Mandriva;
# ABSTRACT: an ORM for CPAN packages available in Mandriva

use ORLite::Mirror 1.12 ();

sub import {
    my $class = shift;

    # prevent double-initialisation
    $class->can('orlite') or
    ORLite::Mirror->import( {
        url    => 'http://ryu.zarb.org/~jquelin/cpan_Mandriva.db',
        maxage => 7 * 24 * 60 * 60,
    } );

    return 1;
}

1;
__END__
