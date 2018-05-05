class ItemController < ApplicationController

get '/' do 
	'this is my ItemController route'
end
 get '/add' do 
 	erb :add_item
 end
end