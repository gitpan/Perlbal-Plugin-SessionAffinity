
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Test::More" => 0
  },
  "configure_requires" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Sane session affinity (sticky sessions) for Perlbal",
  "dist_author" => [
    "Sawyer X <xsawyerx\@cpan.org>"
  ],
  "dist_name" => "Perlbal-Plugin-SessionAffinity",
  "dist_version" => "0.008",
  "license" => "perl",
  "module_name" => "Perlbal::Plugin::SessionAffinity",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "CGI::Cookie" => 0,
    "Digest::SHA" => 0,
    "Perlbal" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
