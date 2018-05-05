require 'sinatra/base'

require './controllers/ApplicationController'
require 'sinatra/activerecord'

map('/'){
	run ApplicationController
}