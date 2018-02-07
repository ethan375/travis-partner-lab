class ChakraController < ApplicationController

  get '/' do 
    @chakras = Chakra.all
    p @chakras
    @chakras.to_json
  end 

  post '/' do 
   payload_body = request.body.read
   payload = JSON.parse(payload_body).symbolize_keys
   @chakra = Chakra.new 
   @chakra.name = payload[:name]
   @chakra.color = payload[:color] 
   @chakra.size = payload[:size]
   @chakra.save
   @chakra.to_json
  end 

  get '/:id' do 
    @chakra = Chakra.find params[:id]
    @chakra
  end 

  delete '/:id' do 
    @chakra = Chakra.find params[:id]


end 