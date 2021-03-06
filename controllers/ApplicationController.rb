class ApplicationController < Sinatra::Base 

  require 'bundler' 
  Bundler.require()

  register Sinatra::CrossOrigin

  configure do 
    enable :cross_origin
  end 

  set :allow_origin, :any
  set :allow_methods, [:get, :post, :options, :put, :delete]
  set :allow_credentials, true 


    ActiveRecord::Base.establish_connection(
    :adapter => 'postgresql',
    :database => 'chakra'
    )

      options "*" do 
    response.headers["Allow"] ="HEAD, GET, PUT, POST, DELTE, OPTIONS"
    response.headers["Access-Control-Allow-Headers"] ="X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
  end

    get '/' do 
    redirect '/chakras'
  end 

end 