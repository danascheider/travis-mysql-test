require 'spec_helper'

describe TestApp do 
  include Rack::Test::Methods

  it 'says hello' do 
    get '/index'
    expect(last_response.body).to eql 'Hello world'
  end
end