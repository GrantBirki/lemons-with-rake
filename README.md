# lemons-with-rake 🍋

[![test](https://github.com/GrantBirki/lemons-with-rake/actions/workflows/test.yml/badge.svg)](https://github.com/GrantBirki/lemons-with-rake/actions/workflows/test.yml)
[![lint](https://github.com/GrantBirki/lemons-with-rake/actions/workflows/lint.yml/badge.svg)](https://github.com/GrantBirki/lemons-with-rake/actions/workflows/lint.yml)
[![build](https://github.com/GrantBirki/lemons-with-rake/actions/workflows/build.yml/badge.svg)](https://github.com/GrantBirki/lemons-with-rake/actions/workflows/build.yml)
[![release](https://github.com/GrantBirki/lemons-with-rake/actions/workflows/release.yml/badge.svg)](https://github.com/GrantBirki/lemons-with-rake/actions/workflows/release.yml)

## About ⭐

A template repository for building releasing SLSA Level 3 Complaint Ruby Gems with Rake.

## Releasing

Releasing simply takes place with `bundle exec rake release`. This will do the following:

1. Build the gem (just for local purposes)
2. Creates a git tag and pushes the tag only
3. The tag will trigger the release workflow which will fully build and push the gem to rubygems.org via GitHub Actions

The release workflow will also handle the following:

- Building the Gem in CI
- Signing the Gem
- Pushing the Gem to rubygems.org
- Pushing the Gem to the GitHub Package Registry
- Creating a release on GitHub
