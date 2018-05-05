require 'sinatra/base'

require './controllers/ApplicationController'
require 'sinatra/activerecord'
require './controllers/ItemController'
map('/'){
	run ApplicationController
}
map('/items'){
	run ItemController
}