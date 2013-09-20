# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'euler_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "euler_parser"
  spec.version       = EulerParser::VERSION
  spec.authors       = ["Trevor Lalish-Menagh"]
  spec.email         = ["trev@trevreport.org"]
  spec.description   = "Parses Project Euler to make code samples"
  spec.summary       = "Generates scaffolding for Project Euler problems in multiple languages"
  spec.homepage      = ""
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_dependency "nokogiri"
end
