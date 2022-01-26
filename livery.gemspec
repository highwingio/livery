# frozen_string_literal: true

require_relative "lib/livery/version"

Gem::Specification.new do |spec|
  spec.name = "livery"
  spec.version = Livery::VERSION
  spec.authors = ["Highwing Crew"]
  spec.email = ["engineering@highwing.io"]

  spec.summary = "Highwing's shared style and linting configurations for Ruby"
  spec.homepage = "https://github.com/highwingio/lambdas/tree/main/gems/livery"
  spec.required_ruby_version = Gem::Requirement.new(">= 3.2.1")

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.glob("{lib}/**/*.*") + %w[README.md default.yml]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rubocop", ">= 1.0", "< 2.0"
  spec.add_runtime_dependency "rubocop-rails", "~> 2.12"
  spec.add_runtime_dependency "rubocop-rspec", "~> 2.4.0"
  spec.add_runtime_dependency "standard", "~> 1.5.0"
  spec.add_runtime_dependency "rubocop-gitlab-security", "~> 0.1.1"
  spec.add_runtime_dependency "betterlint", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
