# frozen_string_literal: true

require_relative "lib/rubocop/getninjas/version"

Gem::Specification.new do |spec|
  spec.name = "rubocop-getninjas"
  spec.version = Rubocop::Getninjas::VERSION
  spec.authors = ["Victor Giraldes"]
  spec.email = ["victorpgiraldes@gmail.com"]

  spec.summary = "Custom Style Guide for Getninjas"
  spec.description = "Write a longer description or delete this line."
  spec.required_ruby_version = ">= 2.6.0"

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  spec.add_dependency('rubocop', '~> 1.31')
  spec.add_dependency('rubocop-performance', '~> 1.14.2')
  spec.add_dependency('rubocop-rails', '~> 2.15.2')
  spec.add_dependency('rubocop-rspec', '~> 2.12.0')
  spec.add_development_dependency('rspec', '~> 3.5')
end
