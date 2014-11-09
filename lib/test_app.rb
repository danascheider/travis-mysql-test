require 'sinatra'
require 'sinatra/sequel'
require 'sequel'

class TestApp < Sinatra::Base
  set :database, "mysql2://travis@127.0.0.1:3306/test"

  DB = Sequel.connect(database)

  get '/index' do
    'Hello world'
  end
end