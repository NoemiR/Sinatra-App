class ItemController < ApplicationController

get '/' do 
	'this is my ItemController route'
end
 get '/add' do 
 	@page = "Add Item"
 	@action = "/items"
 	@method = "POST"
 	@placeholder = "Enter your item"
 	@value=""
 	@buttontext = "Add Item"
 	erb :add_item
 end
end