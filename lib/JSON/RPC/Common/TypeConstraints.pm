#!/usr/bin/perl

package JSON::RPC::Common::TypeConstraints;

# ABSTRACT: Type constraint library

use strict;
use warnings;

use Type::Library -base,
                  -declare => qw(JSONDefined JSONValue JSONContainer);
use Type::Utils qw(declare as);
use Types::Standard qw(Value ArrayRef HashRef Undef);

declare JSONDefined, as Value|ArrayRef|HashRef;

declare JSONValue, as Undef|Value|ArrayRef|HashRef;

declare JSONContainer, as ArrayRef|HashRef;

__PACKAGE__

=pod

=head1 SYNOPSIS

	use JSON::RPC::Common::TypeConstraints qw(JSONValue);

=head1 DESCRIPTION

See L<MooseX::Types>

=head1 TYPES

=over 4

=item JSONDefined

C<Value|ArrayRef|HashRef>

=item JSONValue

C<Undef|Value|ArrayRef|HashRef>

=item JSONContainer

C<ArrayRef|HashRef>

=back

=cut


