use strict;
use warnings;
use Test::More tests => 1;
use Foo;
is Foo::hello(), "hello";
