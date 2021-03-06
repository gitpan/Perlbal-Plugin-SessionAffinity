
# This file was automatically generated by Dist::Zilla::Plugin::ModuleBuild v5.015.
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
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
  "dist_version" => "0.100",
  "license" => "perl",
  "module_name" => "Perlbal::Plugin::SessionAffinity",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "CGI::Cookie" => 0,
    "Digest::MD5" => 0,
    "Digest::SHA" => 0,
    "Hash::Util" => 0,
    "MIME::Base64" => 0,
    "Perlbal" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => [],
  "test_requires" => {
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Test::More" => 0,
    "perl" => "5.006"
  }
);


my %fallback_build_requires = (
  "File::Spec" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "Module::Build" => "0.3601",
  "Test::More" => 0,
  "perl" => "5.006"
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  delete $module_build_args{test_requires};
  $module_build_args{build_requires} = \%fallback_build_requires;
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
