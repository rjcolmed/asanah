class SequencesController < ApplicationController

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