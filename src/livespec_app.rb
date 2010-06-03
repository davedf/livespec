require 'rubygems'
require 'sinatra/base'
class LiveSpecApp < Sinatra::Base
	get '/hi' do
  		"Hello World From Live Spec!"
	end
end
