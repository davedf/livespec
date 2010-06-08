require (File.dirname(__FILE__)+"/helper")

class TestUnconfiguredIndex < Test::Unit::TestCase
	include Rack::Test::Methods
	def app
		LiveSpecApp	
	end
	def test_configured_app_redirects_to_config
		get '/hi'
    assert_redirect_to_config
	end
	def test_configured_app_redirects_to_config_from_root
		get '/'
    assert_redirect_to_config
	end
	def test_unconfigured_app_doesnt_redirect_config_request
	  get '/config'
	  assert_equal 'config', last_response.body
	end
	def assert_redirect_to_config
	  follow_redirect!    
	  assert last_request.url =~ /\/config/
	  assert last_response.ok?    
	end
end
