package ShipIt::Step::DistTestExtra;
use 5.006;
use strict;
use warnings;
our $VERSION = '0.01';
use base 'ShipIt::Step::DistTest';

sub run {
    my $self = shift;
    $ENV{AUTHOR_TESTING} = 1;
    $self->SUPER::run(@_);
}
1;
__END__

=for stopwords DistTest

=head1 NAME

ShipIt::Step::DistTestExtra - Like the DistTest step but also runs extra tests

=head1 SYNOPSIS

# None.

=head1 DESCRIPTION

This L<ShipIt> step extends the standard C<DistTest> step with the ability to
run extra tests as defined by L<Module::Install::ExtraTests>.

=head1 METHODS

=over 4

=item C<run>

Sets the C<AUTHOR_TESTING> environment variable to 1, then calls the C<run()>
method of the superclass (L<ShipIt::Step::DistTest>).

=back

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests through the web interface at
L<http://rt.cpan.org>.

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit <http://www.perl.com/CPAN/> to find a CPAN
site near you. Or see L<http://search.cpan.org/dist/ShipIt-Step-DistTestExtra/>.

=head1 AUTHORS

Marcel GrE<uuml>nauer, C<< <marcel@cpan.org> >>

=head1 COPYRIGHT AND LICENSE

Copyright 2008-2009 by Marcel GrE<uuml>nauer

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
