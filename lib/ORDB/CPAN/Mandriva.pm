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

=head1 SYNOPSIS

    use ORDB::CPAN::Mandriva;
    my $nbmodules = ORDB::CPAN::Mandriva::Module->count;
    my $cpandists = ORDB::CPAN::Mandriva->selectcol_arrayref(
        'SELECT DISTINCT dist FROM module ORDER BY dist'
    );


=head1 DESCRIPTION

This module is an easy way to fetch a database listing all Perl modules
& distributions packaged within Mandriva Linux distribution.

Check the F<examples> directory for some ideas on how to use it.


=head1 SEE ALSO

You can find more information on this module at:

=over 4

=item * Search CPAN

L<http://search.cpan.org/dist/Games-RailRoad>

=item * See open / report bugs

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Games-RailRoad>

=item * Git repository

L<http://github.com/jquelin/games-railroad>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Games-RailRoad>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Games-RailRoad>

=back
