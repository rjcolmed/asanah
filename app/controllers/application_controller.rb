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

      redirect "/users/#{user.slug}"
    else
      redirect '/users/signup'
    end

  end

  get '/users/:slug' do
    @user = User.find_by_slug(params[:slug])

    erb :'users/show'
  end

  get '/sequences/new' do
    erb :'sequences/new'
  end

  post '/sequences' do
    binding.pry
    sequence = Sequence.new(params)

    if sequence.save
      redirect "/sequences/#{sequence.slug}"
    else
      redirect 'sequences/new'
    end

  end

  get '/sequences/:slug' do
    @sequence = Sequence.find_by_slug(params[:slug])

    erb :'sequences/show'
  end

end