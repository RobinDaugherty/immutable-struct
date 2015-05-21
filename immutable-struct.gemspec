# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'immutable-struct'

Gem::Specification.new do |spec|
  spec.name          = "immutable-struct"
  spec.version       = ImmutableStruct::VERSION
  spec.authors       = ["Stitch Fix Engineering"]
  spec.email         = ["opensource@stitchfix.com"]
  spec.description   = %q{Easily create value objects without the pain of Ruby's Struct (or its setters)}
  spec.summary   = %q{Easily create value objects without the pain of Ruby's Struct (or its setters)}
  spec.homepage      = "http://technology.stitchfix.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
