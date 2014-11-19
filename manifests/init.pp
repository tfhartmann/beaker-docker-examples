node default {
  # Setup pre and post run stages
  # Typically these are only needed in special cases but are good to have
  stage { ['pre', 'post']: }
  Stage['pre'] -> Stage['main'] -> Stage['post']

  user { 'vagrant':
    groups  => ['wheel', 'docker' ],
    require => Class['docker'],
  }
  $packages = hiera('centos::packages')
  # Install EPEL
  package { 'epel-release':
    ensure => installed,
  }

  # Install packages
  package { $packages:
    ensure  => installed,
    require => Package['epel-release'],
  }
  class { 'docker': }
  class { 'rbenv': }
  rbenv::plugin { 'sstephenson/ruby-build': }
  # Install Default Ruby Version on Ubuntu 14.04
  rbenv::build { '1.9.3-p484': }
  
}
# vim: set ft=puppet ts=2 sw=2 ei:
