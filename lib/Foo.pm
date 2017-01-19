package Foo;
use strict;
use warnings;

our $VERSION = '0.01';

eval {
    require XSLoader;
    XSLoader::load(__PACKAGE__, $VERSION);
};
if ($@) {
    no warnings 'once';
    *hello = sub { "hello" };
}

1;
__END__

=encoding utf-8

=head1 NAME

Foo - Blah blah blah

=head1 SYNOPSIS

  use Foo;

=head1 DESCRIPTION

Foo is

=head1 AUTHOR

Shoichi Kaji <skaji@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright 2017 Shoichi Kaji <skaji@cpan.org>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
