class people::yshoho {
  #project
  include projects::real

  #GUI application
  include iterm2::dev

  #homebrew packages
  package {
    [
     'plenv',
     'perl-build',
     ]:
  }
}
