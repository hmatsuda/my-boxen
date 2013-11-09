class people::hmatsuda {
  #project
  include projects::real

  #GUI application
  include kindle
  include iterm2::dev
  class { "osx::dock::icon_size":  size => 36 }
  class { "osx::dock::autohide": }

  #CUI application
  include pow
  include postgresql
  include mongodb
  include redis
  include beanstalk
  include screen

  #homebrew packages
  package {
    [
     'mecab',
     'mecab-ipadic',
     'lha',
     'plenv',
     'perl-build',
     ]:
  }
}
