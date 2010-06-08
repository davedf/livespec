require (File.dirname(__FILE__)+"/helper")

class TestUnconfiguredIndex < Test::Unit::TestCase
	include Rack::Test::Methods
	def app
		LiveSpecApp	
	end
	def test_configured_app_redirects_to_config
		get '/hi'
		follow_redirect!    
    assert_last_request_was_for_config
	end
	def test_configured_app_redirects_to_config_from_root
		get '/'
		follow_redirect!    
    assert_last_request_was_for_config
	end
	def test_unconfigured_app_doesnt_redirect_config_request
	  get '/config'
	  assert_equal 'config', last_response.body
	end
	def assert_last_request_was_for_config
	  assert last_request.url =~ /\/config/
	  assert last_response.ok?    
	end
end
