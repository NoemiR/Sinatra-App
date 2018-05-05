class ApplicationController < Sinatra::Base
	require 'bundler'
	Bundler.require()

get '/' do 
	"My first fullstack app "
end
end