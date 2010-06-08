require 'rubygems'
require 'sinatra/base'
require "src/regexRouteFilter.rb"

class LiveSpecApp < Sinatra::Base
  register Sinatra::RegexpRouteFilter
	before_with_regexp(/^((?!\/config).)*$/) do 
		if (@configuration.nil?)
		  redirect '/config', 301
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
