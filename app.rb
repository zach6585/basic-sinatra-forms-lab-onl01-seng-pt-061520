require 'sinatra/base'

class App < Sinatra::Base
  get '/newteam' do 
    erb :newteam
  end 
  
  post '/newteam' do 
    @a = []
    params.each do |k,v| 
      @a << "#{k}: #{v}"
    end 
    @a
    erb :team
  end 
  
end
