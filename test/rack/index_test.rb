require (File.dirname(__FILE__)+"/helper")

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
