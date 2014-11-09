require 'rspec'
require 'rspec/core'
require 'rspec/mocks'
require 'rspec/support'
require 'rspec/expectations'

require File.expand_path('../../lib/test_app.rb', __FILE__)

ENV['RACK_ENV'] = 'test'