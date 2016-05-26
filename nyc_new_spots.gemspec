# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nyc_new_spots/version'

Gem::Specification.new do |spec|
  spec.name          = "nyc_new_spots"
  spec.version       = NycNewSpots::VERSION
  spec.authors       = ["hangloos"]
  spec.email         = ["ericloos00@gmail.com"]

  spec.summary       = %q{NYC New Restaurants}
  spec.description   = %q{NYC New Restaurants}
  spec.homepage      = "https://github.com/hangloos/nyc_new_spots-cli-gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
 
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = ["nyc-new-spots"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "nokogiri", "~> 1.6"


end


