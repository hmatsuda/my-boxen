class people::sishikawa {
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
