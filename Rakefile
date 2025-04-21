# frozen_string_literal: true

require "bundler/gem_tasks"

# Remove the default release task
Rake::Task["release"].clear

desc "Build gem into the pkg directory, create git tag and push the tag only (no gem push)"
task :release do
  gem_helper = Bundler::GemHelper.instance

  # Access the gem specification
  gemspec = gem_helper.gemspec
  version = gemspec.version

  # Build the gem (equivalent to `rake build`)
  Rake::Task["build"].invoke

  # Create a git tag with the version (prefixed with 'v')
  sh "git tag -a -m \"Version #{version}\" v#{version}"

  # Push git tag to remote
  sh "git push origin v#{version}"

  puts "Tagged and pushed v#{version} - the release workflow will now begin"
end
