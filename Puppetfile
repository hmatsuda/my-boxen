# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.3.4"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.1"
github "foreman",    "1.0.0"
github "gcc",        "2.0.1"
github "git",        "2.0.0"
#github "go",         "2.0.1"
github "homebrew",   "1.5.1"
github "hub",        "1.0.3"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.2"
github "nodejs",     "3.3.0"
github "openssl",    "1.0.0"
github "phantomjs",  "2.1.0"
github "pkgconfig",  "1.0.0"
github "repository", "2.2.0"
github "ruby",       "6.7.2"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github "osx",        "1.6.0"
github "kindle",     "1.0.1"
github "java",       "1.1.0"
github "iterm2",     "1.0.3"
github "imagemagick", "1.2.1", :repo => "hmatsuda/puppet-imagemagick"
github "opera",      "0.1.0"
github "firefox",    "1.1.2"
github "php",        "1.1.1"
github "skype",      "1.0.4"
github "evernote",   "2.0.4"
github "skitch",     "1.0.2"
github "virtualbox", "1.0.5"
github "vagrant",    "3.0.0"
github "sourcetree", "0.0.4"
github "osxfuse",    "1.1.0"
github "dropbox",    "1.1.1"
github "heroku",     "2.0.0"
github "foreman",    "1.0.0"
github "emacs",      "1.1.0"
github "chrome",     "1.1.0"
github "mysql",      "1.1.3"
github "zsh",        "1.0.0"
github "screen",     "1.0.0"
github "memcached",  "1.2.0"
github "mongodb",    "1.0.4"
github "pow",        "1.0.0"
github "keyremap4macbook", "1.0.4"
github "beanstalk",  "1.0.0"
github "googledrive", "1.0.2"
github "github_for_mac", "1.0.1"
github "python", "1.1.1"
github "postgresql", "2.0.1"
github "sysctl", "1.0.0"
github "redis", "1.0.0"
github "beanstalk", "1.0.0"
github "android", "1.0.0"
github "packer", "1.1.0"

