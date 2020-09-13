require 'sinatra/base'

class App < Sinatra::Base
  get '/newteam' do 
    erb :newteam
  end 
  
  post '/newteam' do 
    @a = []
    b = ['Team Name','Coach','Point Guard','Shooting Guard','Small Forward', 'Power Forward','Center']
    i = 0
    params.each do |k,v| 
      @a << "#{b[i]}: #{v}"
      i +=1 
    end 
    @a
    erb :team
  end 
  
end
