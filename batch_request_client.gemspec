require File.expand_path('../lib/batch_request_client/version.rb', __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "batch_request_client"
  s.version     = BatchRequestClient::VERSION
  s.authors     = ["Srinivas Raghunathan", "Shishir Kakaraddi"]
  s.homepage    = "https://github.com/Netflix/batch_request_client"
  s.summary     = %q{Ruby Client to make Batch Requests}
  s.description = %q{Batch Request Client.}
  s.license     = "Apache-2.0"
  s.require_paths = ["lib"]

  s.add_dependency "rest-client", "~> 2.0"
  s.required_ruby_version = '>= 2.1'

  s.add_development_dependency "bundler", "~> 1.14"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "minitest", "~> 5.0"
  s.add_development_dependency "rdoc", "~> 5.1"
end
