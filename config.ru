
require 'sinatra/base'
require 'sinatra/activerecord'



require './controllers/ApplicationController'
require './controllers/ChakraController'

require './models/ChakrasModel'

map ('/'){
  run ApplicationController
}

map ('/chakras'){
  run ChakraController
}

