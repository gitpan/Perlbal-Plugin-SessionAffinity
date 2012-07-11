use strict;
use warnings;
package Perlbal::Plugin::SessionAffinity::Sequential;
{
  $Perlbal::Plugin::SessionAffinity::Sequential::VERSION = '0.001';
}
# ABSTRACT: Sequential backend IDs

my $ref = ref [];

sub get_backend_id {
    my ( $backend, $create_id ) = @_;
    my @nodes   = @{ $backend->{'service'}{'pool'}{'nodes'} };

    # find the id of the node
    # (index number, starting from 1)
    foreach my $i ( 0 .. scalar @nodes ) {
        # check if it was just removed
        # stupid race condition...
        defined $nodes[$i] && ref $nodes[$i] && ref $nodes[$i] eq $ref
            or next;

        my ( $ip, $port ) = @{ $nodes[$i] };

        if ( $backend->{'ipport'} eq "$ip:$port" ) {
            return $create_id->( $ip, $port );
        }
    }

    # default to first backend in node list
    return $create_id->( @{ $nodes[0] } );
}

1;


__END__
=pod

=head1 NAME

Perlbal::Plugin::SessionAffinity::Sequential - Sequential backend IDs

=head1 VERSION

version 0.001

=head1 AUTHOR

Sawyer X <xsawyerx@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Sawyer X.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

