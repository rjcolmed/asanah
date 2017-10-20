class SequencesController < ApplicationController

  get '/sequences' do
    @sequences = User.find(session[:user_id]).sequences
    
    erb :'sequences/index'
  end

  get '/sequences/new' do
    if logged_in?
      @asanas = Asana.all
      erb :'sequences/new'
    else
      redirect '/login'
    end
  end

  post '/sequences' do
    sequence = Sequence.new(params[:sequence])
    sequence.asana_ids = params[:asanas]
    sequence.user = current_user

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

  get '/sequences/:slug/edit' do
    @sequence = Sequence.find_by_slug(params[:slug])
    @asanas = Asana.all

    erb :'sequences/edit'
  end

  patch '/sequences/:slug/edit' do
    sequence = Sequence.find_by_slug(params[:slug])

    sequence.update(name: params[:name], notes: params[:notes])

    redirect "/sequences/#{sequence.slug}"
  end

  delete '/sequences/:slug/delete' do

    sequence = Sequence.find_by_slug(params[:slug])
    slug = sequence.user.slug
    sequence.destroy

    redirect "users/#{slug}"
  end
end