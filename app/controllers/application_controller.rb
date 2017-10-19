require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "asanah_secret"
  end

  get '/' do
    erb :index
  end

  get '/signup' do
    erb :'users/signup'
  end

  post '/signup' do
    user = User.new(params)
    
    if user.save
      session[:user_id] = user.id

      redirect '/tweets'
    else
      redirect '/users/signup'
    end

  end

end