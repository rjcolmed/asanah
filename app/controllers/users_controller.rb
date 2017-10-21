class UsersController < ApplicationController

  get '/' do
    redirect "/users/#{current_user.slug}" if logged_in?

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

  get '/login' do
    erb :'users/login'
  end

  post '/login' do
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id

      redirect "/users/#{user.slug}"
    else
      redirect '/login'
    end
  end

  get '/users/:slug' do
    if logged_in?
      @user = current_user
      
      erb :'users/show'
    else
      redirect '/login'
    end
    
  end

  get '/logout' do
    session.clear

    redirect '/login'
  end
end