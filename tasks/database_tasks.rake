require 'mysql2'
require 'sequel'

Sequel.extension :migration

MIGRATION_PATH = File.expand_path('db/migrate')
db_info = {
  adapter:  'mysql2',
  port:     3306,
  host:     '127.0.0.1',
  username: 'travis',
}

DATABASE = "mysql2://travis@127.0.0.1:3306/test"

DB = Sequel.connect(DATABASE)

task 'db:migrate' do 
  Sequel::Migrator.run(DB, MIGRATION_PATH)
end