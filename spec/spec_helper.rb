require 'rspec'
require 'rspec/core'
require 'rspec/mocks'
require 'rspec/support'
require 'rspec/expectations'
require 'rack/test'

require File.expand_path('lib/test_app.rb')
require File.expand_path('lib/widget.rb')

ENV['RACK_ENV'] = 'test'

def app
  TestApp.new 
end