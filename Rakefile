begin
  require 'rspec/core/rake_task'

  desc 'Run specs'
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.verbose = false
  end

  task :default => :spec
rescue LoadError
  # no rspec available
end

namespace :deploy do
  desc 'Deploys lambda function to dev'
  task :dev do
    Rake::Task["deploy:environment"].invoke("dev")
  end

  desc 'Deploys lambda function to staging'
  task :staging do
    Rake::Task["deploy:environment"].invoke("staging")
  end

  desc 'Deploys lambda function to production'
  task :production do
    Rake::Task["deploy:environment"].invoke("production")
  end

  task :environment, :env do |t, args|
    system "serverless deploy --stage #{args.env} --region eu-west-1"
  end
end
