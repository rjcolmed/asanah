class UsersController < ApplicationController
  
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
end