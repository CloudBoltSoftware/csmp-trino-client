require File.expand_path 'lib/trino/client/version', File.dirname(__FILE__)

Gem::Specification.new do |gem|
  gem.name          = "trino-client"
  gem.version       = Trino::Client::VERSION

  gem.authors       = ["Atish Sahoo"]
  gem.email         = ["asahoo@cloudbolt.io"]
  gem.description   = %q{Trino client library}
  gem.summary       = %q{Trino client library}
  gem.homepage      = "https://github.com/CloudBoltSoftware/csmp-trino-client"
  gem.license       = "Apache-2.0"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 1.9.1"

  gem.add_dependency "faraday", ["~> 1.0"]
  gem.add_dependency "faraday_middleware", ["~> 1.0"]
    gem.add_dependency "msgpack", [">= 0.7.0"]

  gem.add_development_dependency "rake", [">= 0.9.2", "< 11.0"]
  gem.add_development_dependency "rspec", ["~> 2.13.0"]
  gem.add_development_dependency "webmock", ["~> 3.0"]
  gem.add_development_dependency "addressable", ["~> 2.4.0"] # 2.5.0 doesn't support Ruby 1.9.3
  gem.add_development_dependency "simplecov", ["~> 0.10.0"]
end
