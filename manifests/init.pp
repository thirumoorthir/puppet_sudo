# sudo_puppet
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include sudo_puppet
class sudo_puppet {


if $operatingsystem != windows  {

  include sudo_puppet::config
  include sudo_puppet::params
}
else {
    fail(" (${::operatingsystem}) is  Unsupported by Sudoers")
}


}
