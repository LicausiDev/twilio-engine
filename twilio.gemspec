$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "twilio/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "twilio-engine"
  s.version     = Twilio::VERSION
  s.authors     = ["Matthew Licausi"]
  s.email       = ["matthew@licausidev.net"]
  s.homepage    = "http://clicktocall.licausidev.net"
  s.summary     = "Rails engine for quickly generating twilio integrations and functionality."
  s.description = "Quickly add twilio functionality to your app such as click-to-call and sms messaging."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.2"

  s.add_development_dependency "sqlite3"
end
