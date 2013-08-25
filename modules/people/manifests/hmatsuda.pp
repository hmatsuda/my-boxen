class people::hmatsuda {
  #project
  include projects::real

  #includes
  include kindle
  include iterm2::dev
  class { "osx::dock::icon_size":  size => 36 }
  class { "osx::dock::autohide": }
}
