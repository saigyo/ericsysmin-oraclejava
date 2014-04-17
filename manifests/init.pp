# == Class: oraclejava
#
# This sets up Oracle Java on Debian and Ubuntu systems.
#
# === Parameters:
#
#   [*version*]
#   Enter the version of Oracle Java you want installed. ex. 6, 7, 8
#
# === Sample Usage:
#
#   class { 'oraclejava': version => '7' }
#     or
#   include oraclejava
#   ***this will install java7 as it's the default value
#
class oraclejava (
  $version = $oraclejava::params::version) inherits oraclejava::params {
  include oraclejava::repository
  include oraclejava::install
}
