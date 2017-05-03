$:.push File.expand_path("../lib", __FILE__)
require "batch_request_client/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "batch_request_client"
  s.version     = BatchRequestClient::VERSION
  s.authors     = ["Srinivas Raghunathan"]
  s.email       = ["sraghunathan@netflix.com"]
  s.homepage    = "https://github.com/Netflix/batch_request_client"
  s.summary     = %q{Batch Request Client.}
  s.description = %q{Batch Request Client.}
  s.license     = "Apache"
  s.require_paths = ["lib"]
end
