require 'sinatra'

class MyApp < Sinatra::Base
    get '/' do
         "<!DOCTYPE html><html><head></head><body><h1>Waka Gracias!!</h1></body></html>"
    end
end