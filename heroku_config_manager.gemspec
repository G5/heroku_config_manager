# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'heroku_config_manager/version'
require "heroku_config_manager/manager"

Gem::Specification.new do |spec|
  spec.name          = "heroku_config_manager"
  spec.version       = HerokuConfigManager::VERSION
  spec.authors       = ["bbauer"]
  spec.email         = ["brian.bauer@g5platform.com"]
  spec.summary       = %q{Simple Ruby gem to set and remove Heroku config vars}
  spec.description   = %q{Simple Ruby gem to set and remove Heroku config vars}
  spec.homepage      = "https://github.com/G5/heroku_config_manager"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
