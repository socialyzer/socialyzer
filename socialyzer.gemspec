require File.expand_path("../lib/socialyzer/version", __FILE__)

Gem::Specification.new do |s|
  s.name         = 'socialyzer'
  s.version      = Socialyzer::VERSION
  s.date         = '2012-12-30'
  s.summary      = "A ruby library for dealing with the Socialyzer API"
  s.description  = "A ruby library for dealing with the Socialyzer API"
  s.authors      = ["Rocco Stanzione"]
  s.email        = 'rocco@socialyzerhq.com'
  s.files        = ["lib/socialyzer.rb","lib/socialyzer/*"]
  s.homepage     = "https://github.com/socialyzer/socialyzer"
  s.require_path = 'lib'
  s.add_dependency "rest-client"
  s.add_dependency "json"
end
