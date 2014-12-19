# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubyspark/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubyspark'
  spec.version       = Rubyspark::VERSION
  spec.authors       = ['Anurag Mohanty']
  spec.email         = ['tevren@gmail.com']
  spec.summary       = 'A ruby port of spark'
  spec.description   = 'A ruby port of (spark)[https://github.com/holman/spark])'
  spec.homepage      = 'https://github.com/tevren/rubyspark'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rspec'
end
