# frozen_string_literal: true

require "octokit"

client = Octokit::Client.new
client.auto_paginate = true
client.per_page = 100

client.repository("grantbirki/lemons").tap do |repo|
  puts "repository: #{repo.name} contains lemons 🍋"
  puts "Last Updated: #{repo.updated_at}"
end

puts "\nDone ✅"
