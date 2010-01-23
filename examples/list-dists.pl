#!/usr/bin/perl

use strict;
use warnings;

use ORDB::CPAN::Mandriva;

# select all cpan distnames
my $cpandists = ORDB::CPAN::Mandriva->selectcol_arrayref(
    'SELECT DISTINCT dist FROM module ORDER BY dist'
);

{
    local $\ = "\n";    # make sure we print one dist per line
    print for grep { defined } @$cpandists;
}

exit;
__END__

=head1 DESCRIPTION

This small script prints all CPAN distributions available in Mandriva,
one per line.
