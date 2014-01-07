class people::hmatsuda {
  #project
  include projects::real

  #GUI application
  include kindle
  include iterm2::dev
  class { "osx::dock::icon_size":  size => 36 }
  class { "osx::dock::autohide": }
  include vagrant

  #CUI application
  include zsh
  include pow
  include postgresql
  include mongodb
  include beanstalk
  include screen
  # include go
  # go::version { '1.1.1': }
  include packer

  # Set the global default ruby (auto-installs it if it can)
  class { 'ruby::global':
    version => '2.0.0'
  }

  #homebrew packages
  package {
    [
     'mecab',
     'mecab-ipadic',
     'lha',
     'plenv',
     'perl-build',
     'ffmpeg',
     'git-flow',
     'lv',
     'colordiff',
     'wget',
     'tree',
     ]:
  }
}
