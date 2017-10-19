class SequencesController < ApplicationController

  get '/sequences/new' do
    erb :'sequences/new'
  end

  post '/sequences' do
    sequence = Sequence.new(params)
    sequence.user = User.find(session[:user_id])

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