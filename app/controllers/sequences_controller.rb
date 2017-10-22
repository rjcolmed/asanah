require 'rack-flash'

class SequencesController < ApplicationController
  use Rack::Flash

  get '/sequences' do
    if logged_in?
      @sequences = current_user.sequences
      
      erb :'sequences/index'
    else
      redirect '/login'
    end
    
  end

  get '/sequences/new' do
    if logged_in?
      @grouped_asanas = Group.all_asanas_by_group

      erb :'sequences/new'
    else
      redirect '/login'
    end
  end

  post '/sequences' do
    sequence = Sequence.new(params[:sequence]).tap do |seq|
      seq.asana_ids = params[:asanas]
      seq.user = current_user
    end

    if sequence.save
      flash[:message] = "Saved your sequence!"
      redirect "/sequences/#{sequence.slug}"
    else
      redirect 'sequences/new'
    end

  end

  get '/sequences/:slug' do
    if logged_in?
      @sequence = Sequence.find_by_slug(params[:slug])

      if @sequence.user == current_user
        erb :'sequences/show'
      else
        redirect "/users/#{current_user.slug}"
      end
    else
      redirect :'/login'
    end


    erb :'sequences/show'
  end

  get '/sequences/:slug/edit' do
    @sequence = Sequence.find_by_slug(params[:slug])

    if logged_in? && current_user == @sequence.user
      @grouped_asanas = Group.all_asanas_by_group
        
      erb :'sequences/edit'
    else
      redirect '/login'
    end

  end

  patch '/sequences/:slug/edit' do
    sequence = Sequence.find_by_slug(params[:slug])

    if logged_in? && current_user == sequence.user
      sequence.update(params[:sequence])
      sequence.tap { |sequence| sequence.asana_ids = params[:asanas] }.save
      redirect "/sequences/#{sequence.slug}"
    else
      redirect '/login'
    end

  end

  delete '/sequences/:slug/delete' do
    sequence = Sequence.find_by_slug(params[:slug])

    if logged_in? && current_user == sequence.user
      sequence.destroy

      redirect '/sequences'
    else
      redirect '/login'
    end
    
  end

end