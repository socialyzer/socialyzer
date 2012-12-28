require File.expand_path("../lib/socialyzer/version", __FILE__)

Gem::Specification.new do |s|
  s.name         = 'socialyzer'
  s.version      = Socialyzer::VERSION
  s.date         = '2012-12-27'
  s.summary      = "A ruby library for dealing with the Socialyzer API"
  s.description  = "A ruby library for dealing with the Socialyzer API"
  s.authors      = ["Rocco Stanzione"]
  s.email        = 'rocco@socialyzerhq.com'
  s.files        = ["lib/socialyzer.rb"]
  s.homepage     = "http://www.socialyzerhq.com"
  s.require_path = 'lib'
  s.add_dependency "rest-client"
  s.add_dependency "json"
end
