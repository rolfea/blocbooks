# require 'bundler/gem_tasks'
# require 'rspec/core/rake_task'

# RSpec::Core::RakeTask.new(:seed)

task "db:seed" do
  ruby "config/db/seed.rb"
end

task "db:create" do
  ruby "config/db/create_books.rb"
end
