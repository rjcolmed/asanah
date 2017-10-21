require './config/environment'

class ApplicationController < Sinatra::Base
  include AuthenticationHelpers

  configure do
    set :public_folder, '/public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "asanah_secret"
  end
  
end