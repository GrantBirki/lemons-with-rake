# frozen_string_literal: true

require "bundler/gem_tasks"

desc "Check for no pending changelog entries before release"
task release: "changelog:check_clean" # Before task is required

# Remove the default release task and recreate it to only push the tag
Rake::Task["release"].clear

namespace :release do
  task :checks do
    Bundler::GemHelper.instance.guard_clean
    Bundler::GemHelper.instance.guard_already_tagged
  end

  task build: :checks do
    Bundler::GemHelper.instance.build_gem
  end

  task :tag do
    Bundler::GemHelper.instance.tag_version
  end

  task :push do
    Bundler::GemHelper.instance.git_push
  end
end

desc "Build gem into the pkg directory, create git tag and push the tag only (no gem push)"
task release: ["release:checks", "release:build", "release:tag", "release:push"]
