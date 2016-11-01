require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'
require_relative 'db_config'
require_relative 'models/animal'
require_relative 'models/user'
require_relative 'models/state'
require_relative 'models/city'

helpers do
  def logged_in?
    !!current_user   # returns true if there is a current user, or false if ther's not
  end

  def current_user
    User.find_by(id: session[:user_id])
  end
end

get '/' do

  erb :index
end

get '/pet' do

end

post '/pet/new' do


end

get '/create-account' do

  @states = State.all
  erb :user_new
end

post '/create-account' do

  user = User.new
  user.name = params[:name]
  user.estate = params[:estate]
  user.city = params[:city]
  user.suburb = params[:address]
  user.postcode = params[:postcode]
  user.email = params[:email]
  user.password = params[:password]
  user.save
  redirect to '/'
end

get '/session/new' do
  erb :session_new
end

post '/session' do
  user = User.find_by(email: params[:email])
  # using only 'if user' it returns true, the same as 'if user == true'
  if user && user.authenticate(params[:password])
    #you are fine
    session[:user_id] = user.id
    redirect to '/'
  else
    #who are you
    erb :session_new
  end
end

delete '/session' do
  #clearing the session
  session[:user_id] = nil
  redirect to '/session/new'
end
