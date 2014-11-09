require 'mysql2'
require 'sequel'

Sequel.extension :migration

MIGRATION_PATH = File.expand_path('db/migrate')
DATABASE_INFO = {
  adapter:  'mysql2',
  port:     3306,
  host:     '127.0.0.1',
  username: 'travis',
}

namespace :db do 
  desc 'Create new migration, required arg NAME, default PATH /db/migrate'
  task :create_migration, [:NAME, :PATH] do |t, args|
    path = args[:path] || MIGRATION_PATH

    File.open((name="#{path}/#{Time.now.getutc.to_s.gsub(/\D/, '')}_#{args[:NAME]}.rb"), 'w+') do |file|
      file.write <<-EOF
Sequel.migration do 
  up do
  end

  down do 
  end
end
EOF
    end
    puts "Migration created at #{path}/#{name}"
  end

  desc 'Set up test database'
  task 'test:prepare' do 
    client = Mysql2::Client.new(DATABASE_INFO)
  end
end