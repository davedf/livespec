require File.expand_path(File.dirname(__FILE__)+"/../../src/livespec_app")
require 'test/unit'
require 'rack/test'

class TestIndex < Test::Unit::TestCase
	include Rack::Test::Methods
	def app
		Sinatra::Application
	end
	def test_default
		get '/hi'
		assert_equal 'Hello World!', last_response.body
	end
end
