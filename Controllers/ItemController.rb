class ItemController < ApplicationController
require 'bundler'
	Bundler.require()



ActiveRecord::Base.establish_connection(
 		:adapter => 'postgresql', 
 		:database => 'item'
	)

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
 # create route
  post '/' do
    # params are in a hash called params, check your terminal
    # extra puts statements help you find this output amongst the very verbose terminal output
    
    pp params
   # this is how you add something with ActiveRecord.  
	@item = Item.new
	@item.title = params[:title]
	@item.user_id = 1 # for now
	@item.save

	# hey there's a .to_json method. cool.
	@item.to_json
	redirect '/items'

  end

end