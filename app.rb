require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :index 
  end 
  
  post '/checkout' do 
    @checkout_item = params[:item]
  
    
  end 
  
  get '/index' do 
    
    @session = session
    session[:item] = @checkout_item
  end
  
  configure do 
    enable :sessions
    set :session_secret, "Graycie" #find sinatra documentaion for setting this to a secure random #number generator value and then sharing that secret via environment variables in the shell to 
      #sinatra
  end 
end