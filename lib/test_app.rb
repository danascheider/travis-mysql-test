require 'sinatra'
require 'sinatra/sequel'
require 'sequel'
require 'json'

class TestApp < Sinatra::Base
  set :database, "mysql2://travis@127.0.0.1:3306/test"

  DB = Sequel.connect(database)

  before do
    @request_body = JSON.parse(request.body.read) rescue nil
  end

  get '/index' do
    'Hello world'
  end

  post '/index' do 
    @request_body.to_json
  end
end