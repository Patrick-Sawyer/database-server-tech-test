require 'sinatra'
require './lib/db'

class RandomName < Sinatra::Base
  enable :sessions

  get '/get' do 
    key = params[:key]
    session[:value] = session[key.to_sym]
    erb :response
  end

  get '/set' do
    key = params.keys[0]
    value = params.values[0]
    session[key.to_sym] = value
  end
end
