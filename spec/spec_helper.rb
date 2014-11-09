require 'rspec'
require 'rspec/core'
require 'rspec/mocks'
require 'rspec/support'
require 'rspec/expectations'
require 'rack/test'

require File.expand_path('../../lib/test_app.rb', __FILE__)

ENV['RACK_ENV'] = 'test'

def app
  TestApp.new 
end