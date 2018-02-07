class ChakraController < ApplicationController

  get '/' do 
    @chakra = Chakra.all
    @chakra.to_json
  end 


end 