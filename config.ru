require 'sinatra/base'
require 'sinatra/activerecord'

require './controllers/ItemController'
require './controllers/ApplicationController'

require './models/ItemModel'



map('/items'){
	run ItemController
}

map('/'){
	run ApplicationController
}
