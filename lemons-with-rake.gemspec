# frozen_string_literal: true

require_relative "lib/version"

Gem::Specification.new do |spec|
  spec.name          = "lemons-with-rake"
  spec.version       = LemonsWithRake::VERSION
  spec.authors       = ["Grant Birkinbine"]
  spec.license       = "MIT"

  spec.summary       = "A test gem"
  spec.description   = <<~SPEC_DESC
    It does nothing
  SPEC_DESC

  spec.homepage = "https://github.com/grantbirki/lemons-with-rake"
  spec.metadata = {
    "source_code_uri" => "https://github.com/grantbirki/lemons-with-rake",
    "documentation_uri" => "https://github.com/grantbirki/lemons-with-rake",
    "bug_tracker_uri" => "https://github.com/grantbirki/lemons-with-rake/issues"
  }

  spec.required_ruby_version = ">= 2.4"

  spec.add_dependency "faraday-retry", "~> 2.3", ">= 2.3.1"
  spec.add_dependency "octokit", "~> 9.2"

  spec.files = %w[lib/lemons-with-rake.rb]
  spec.require_paths = ["tests/ruby/lib"]
end
