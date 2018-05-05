class ApplicationController < Sinatra::Base
	require 'bundler'
	Bundler.require()


set :views, File.expand_path('../views', File.dirname(__FILE__))

ActiveRecord::Base.establish_connection(
 		:adapter => 'postgresql', 
 		:database => 'item'
	)
# get '/' do 
# 	"My first fullstack app "
# end
get '/' do
	@page_title = "index template"
	erb :index
end
end

