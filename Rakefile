require 'rake'
require 'rspec/core/rake_task'
require File.expand_path('../lib/test_app.rb', __FILE__)
Dir.glob('tasks/*.rake').each {|file| require file }

RSpec::Core::RakeTask.new

task 'suite:run' do 
  Rake::Task['db:test:prepare'].invoke
  Rake::Task[:spec].invoke
end

task :default => 'suite:run'