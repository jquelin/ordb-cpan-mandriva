#!/usr/bin/perl

use strict;
use warnings;

use ORDB::CPAN::Mandriva;

my $nbmodules = ORDB::CPAN::Mandriva::Module->count;
print "$nbmodules modules found\n";

exit;
__END__

=head1 DESCRIPTION

This small script prints the number of Perl modules available in
Mandriva.
