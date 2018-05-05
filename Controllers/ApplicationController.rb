class ApplicationController < Sinatra::Base
	require 'bundler'
	Bundler.require()


set :views, File.expand_path('../views', File.dirname(__FILE__))

# get '/' do 
# 	"My first fullstack app "
# end
get '/' do
	@page_title = "index template"
	erb :index
end
end

