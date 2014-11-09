require 'sinatra'
require 'sinatra/sequel'
require 'sequel'

class TestApp < Sinatra::Base
  get '/index' do
    'Hello world'
  end
end