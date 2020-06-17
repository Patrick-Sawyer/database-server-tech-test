require 'sinatra'
require 'sinatra/activerecord'
require './models/getset.rb'

configure :development do
  set :database, "sqlite3:getset.sqlite"
end

configure :test do
  set :database, "sqlite3:getset.sqliteTest"
end

class RandomName < Sinatra::Base

  register Sinatra::ActiveRecordExtension

  enable :sessions

  get '/get' do 
    key = params[:key]
    session[:data] = GetSet.where(key: key)
    if session[:data].length > 0
      session[:value] = session[:data][0][:value]
    else
      session[:value] = ""
    end
    return session[:value]
  end

  get '/set' do
    key = params.keys[0]
    value = params.values[0]
    GetSet.create(key: key, value: value)
  end
end
