require (File.dirname(__FILE__)+"/helper")

class TestIndex < Test::Unit::TestCase
	include Rack::Test::Methods
	def app
		LiveSpecApp	
	end
	def test_default
		get '/hi'
		assert_equal 'Hello World From Live Spec!', last_response.body
	end
end
