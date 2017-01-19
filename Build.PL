use strict;
use warnings;
use Module::Build 0.28;

my %module_build_args = (
  "allow_pureperl" => 1,
  "c_source" => ["src"],
  "dist_abstract" => "Blah blah blah",
  "dist_author" => [
    "Shoichi Kaji <skaji\@cpan.org>"
  ],
  "dist_name" => "Foo",
  "dist_version" => "0.001",
  "license" => "perl",
  "module_name" => "Foo",
);
my $build = Module::Build->new(%module_build_args);
$build->create_build_script;
