class SequencesController < ApplicationController

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
      # @seated = Asana.find_all_in("seated")
      # @standing = Asana.find_all_in("standing")
      # @supine = Asana.find_all_in("supine")
      # @surya_namaskaras = Asana.find_all_in("surya namaskara")
      # @forward_folds = Asana.find_all_in("forward fold")
      # @backbends = Asana.find_all_in("backbend")
      # @arm_balances = Asana.find_all_in("arm balance")
      # @inversions = Asana.find_all_in("inversion")
      # @meditative = Asana.find_all_in("meditative")
      # @twisting = Asana.find_all_in("twist")

      @grouped_asanas = Group.all_asanas_by_group

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

    sequence.update(params[:sequence])
    sequence.asana_ids = params[:asanas]

    redirect "/sequences/#{sequence.slug}"
  end

  delete '/sequences/:slug/delete' do
    sequence = Sequence.find_by_slug(params[:slug])

    sequence.destroy if logged_in? && current_user == sequence.user
    
    redirect "/sequences"
  end
end