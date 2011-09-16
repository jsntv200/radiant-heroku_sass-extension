# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "radiant-heroku_sass-extension"

Gem::Specification.new do |s|
  s.name        = "radiant-heroku_sass-extension"
  s.version     = RadiantHerokuSassExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = RadiantHerokuSassExtension::AUTHORS
  s.email       = RadiantHerokuSassExtension::EMAIL
  s.homepage    = RadiantHerokuSassExtension::URL
  s.summary     = RadiantHerokuSassExtension::SUMMARY
  s.description = RadiantHerokuSassExtension::DESCRIPTION

  ignores = if File.exist?('.gitignore')
    File.read('.gitignore').split("\n").inject([]) {|a,p| a + Dir[p] }
  else
    []
  end

  s.files         = Dir['**/*'] - ignores
  s.test_files    = Dir['test/**/*','spec/**/*','features/**/*'] - ignores
  s.require_paths = ["lib"]
end
