class ApplicationController < Sinatra::base 

  require 'bundler' 
  Bundler.require()

  register Sinatra::CrossOrigin

  configure do 
    cross_origin
  end 

  set :
end 