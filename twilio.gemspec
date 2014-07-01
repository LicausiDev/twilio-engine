$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "twilio/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "twilio"
  s.version     = Twilio::VERSION
  s.authors     = ["Awijeet Shandilya"]
  s.email       = ["awijeet@rubyonrails4ror.com"]
  s.homepage    = "http://rubyonrails4ror.com"
  s.summary     = "Summary of Twilio."
  s.description = "It enables you to do click to call"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.2"

  s.add_development_dependency "sqlite3"
end
