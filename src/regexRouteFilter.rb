require 'sinatra/base'

module Sinatra            
  module RegexpRouteFilter
    def before_with_regexp(pattern, &blk)
      before do
        instance_eval(&blk) if request.path =~ pattern
      end
    end
  end
  register RegexpRouteFilter
end