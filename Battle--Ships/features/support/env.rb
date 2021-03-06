# Generated by cucumber-sinatra. (2014-07-23 16:15:54 +0100)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/battleship.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = Battleships

class BattleshipWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  BattleshipWorld.new
end
