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
    @chakra.name = params[:name]
    @chakra.color = params[:color]
    @chakra.size = params[:size]
    @chakra.size
    resp = {
      status: {
        success: true
      }
    }
    resp.to_json
  end 

  delete '/:id' do 
    @chakra = Chakra.find params[:id]
    @chakra.delete
    resp = {
      status:{
        deleted: true,
        message: "you deleted #{params[:id]}"
      }
    }
    resp.to_json
  end 

  put '/:id' do 
    payload_body = request.body.read
    payload = JSON.parse(payload_body).symbolize_keys

    @chakra = Chakra.find params[:id]
    @chakra.name = payload[:name]
    @chakra.color = payload[:color]
    @chakra.size = payload[:size]
    @chakra.save
  end 


end 