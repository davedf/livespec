require 'rubygems'
require 'sinatra/base'
class LiveSpecApp < Sinatra::Base
	before do
		if (@configuration.nil?)
			request.path_info = '/config'
		end
	end
	get '/config' do
  		"config"
	end
	get '/' do
		"home"
	end
	get '/hi' do
  		"Hello World From Live Spec!"
	end
end
