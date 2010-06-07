require (File.dirname(__FILE__)+"/helper")

class TestIndex < Test::Unit::TestCase
	include Rack::Test::Methods
	def app
		TestConfiguredLiveSpecApp	
	end
	def test_configured_app_doesnt_redirect_to_config
		get '/hi'
		assert_equal 'Hello World From Live Spec!', last_response.body
	end
end
