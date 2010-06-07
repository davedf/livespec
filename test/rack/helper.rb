require 'livespec_app'
require 'test/unit'
require 'rack/test'

class TestConfiguration

end

class TestConfiguredLiveSpecApp < LiveSpecApp
	def initialize()
		super()
		@configuration=TestConfiguration.new
	end 
end
