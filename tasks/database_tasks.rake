require 'mysql2'
require 'sequel'

Sequel.extension :migration

desc 'Set up test database'
task 'db:test:prepare' do 
end