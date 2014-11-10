require 'spec_helper'

describe TestApp do 
  include Rack::Test::Methods

  it 'says hello' do 
    get '/index'
    expect(last_response.body).to eql 'Hello world'
  end

  it 'makes request body available in route' do 
    post '/index', {foo: 'bar'}.to_json
    expect(last_response.body).to eql({foo: 'bar'}.to_json)
  end
end