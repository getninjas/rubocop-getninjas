# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require_relative "lib/rubocop/getninjas/version"

Gem::Specification.new do |spec|
  spec.name = "rubocop-getninjas"
  spec.version = Rubocop::Getninjas::VERSION
  spec.authors = ["Victor Giraldes"]
  spec.email = ["victorpgiraldes@gmail.com"]

  spec.summary = "Custom Style Guide for Getninjas"
  spec.description = "Write a longer description or delete this line."
  spec.required_ruby_version = ">= 2.6.0"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir[
    '{cop,lib,spec}/**/*',
    '*.md',
    '*.gemspec',
    'Gemfile',
  ]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency('rubocop', '~> 1.31')
  spec.add_dependency('rubocop-performance', '~> 1.14.2')
  spec.add_dependency('rubocop-rails', '~> 2.15.2')
  spec.add_dependency('rubocop-rspec', '~> 2.12.0')
  spec.add_development_dependency('rspec', '~> 3.5')

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
