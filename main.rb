require 'sinatra'
# require 'sinatra/reloader' #comment when push to production
require 'active_record'
require 'pry'
require 'fog'
require 'carrierwave'
require 'carrierwave/orm/activerecord'
require_relative 'db_config'
require_relative 'models/animal'
require_relative 'models/user'
require_relative 'models/state'
require_relative 'models/city'
require_relative 'models/dog_breed'
require_relative 'models/match'
# require_relative 'models/my_uploader'


enable :sessions

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

#----------------- PET --- ANIMAL -------------------
get '/pet/:id' do
  if logged_in?
    @pet = Animal.find(params[:id])
    erb :pet_show
  else
    redirect to '/'
  end

end

get '/pet_new' do
  if logged_in?
    @error = nil
    if params[:save] == 'false'
      @error = "There was an error. Pet could not be saved."
    end
    @nsw = City.where(state: '1').order('name ASC')
    @qld = City.where(state: '2').order('name ASC')
    @sa = City.where(state: '3').order('name ASC')
    @tas = City.where(state: '4').order('name ASC')
    @vic = City.where(state: '5').order('name ASC')
    @wa = City.where(state: '6').order('name ASC')
    @act = City.where(state: '7').order('name ASC')
    @nt = City.where(state: '8').order('name ASC')
    @states = State.all
    @breeds = DogBreed.all
    @owner = session[:user_id]
    erb :pet_new
  else
    redirect to '/'
  end
end

get '/pet_edit/:pet_id' do
  if logged_in? && Animal.find(params[:pet_id]).user.id ==  session[:user_id]
    @error = nil
    if params[:save] == 'false'
      @error = "There was an error. Pet could not be saved."
    end
    @pet_to_edit = Animal.find(params[:pet_id])
    @nsw = City.where(state: '1').order('name ASC')
    @qld = City.where(state: '2').order('name ASC')
    @sa = City.where(state: '3').order('name ASC')
    @tas = City.where(state: '4').order('name ASC')
    @vic = City.where(state: '5').order('name ASC')
    @wa = City.where(state: '6').order('name ASC')
    @act = City.where(state: '7').order('name ASC')
    @nt = City.where(state: '8').order('name ASC')
    @states = State.all
    @breeds = DogBreed.all
    @owner = session[:user_id]
    erb :pet_edit
  else
    redirect to '/home'
  end
end

post '/pet/new' do
  if logged_in?
    pet = Animal.new
    pet.name = params[:name]
    pet.species = params[:species]
    pet.dog_breed_id = params[:breed].to_i
    pet.gender = params[:gender]
    pet.description = params[:description]
    pet.user_id = params[:user_id].to_i
    pet.city_id = params[:city].to_i
    pet.state_id = City.find(params[:city]).state.id
    pet.image = params[:image]
    pet.save
    if pet.save
      redirect to "/home"
    else
      redirect to "/pet/new?save=false"
    end
  else
    redirect to '/'
  end
end

post '/pet/update' do
  if logged_in?
    pet = Animal.find(params[:pet_id])
    pet.name = params[:name]
    pet.species = params[:species]
    pet.dog_breed_id = params[:breed].to_i
    pet.gender = params[:gender]
    pet.description = params[:description]
    pet.user_id = params[:user_id].to_i
    pet.city_id = params[:city].to_i
    pet.state_id = City.find(params[:city]).state.id
    pet.image = params[:image]
    if pet.save
      redirect to "/home"
    else
      redirect to "/pet_edit/:pet_id"
    end
  else
    redirect to '/'
  end
end

delete '/pet/:id/delete' do
  Animal.find(params[:id]).destroy
  redirect to '/home'
end

# ---------------- CREATE ACCOUNT ---------------------
get '/create-account' do

  erb :user_new
end

post '/create-account' do

  user = User.new
  user.name = params[:name]
  user.email = params[:email]
  user.password = params[:password]
  user.save
  redirect to '/'
end

#-------------------- SESSION ------------------------
get '/session/new' do
  erb :session_new
end

post '/session' do
  user = User.find_by(email: params[:email])
  # using only 'if user' it returns true, the same as 'if user == true'
  if user && user.authenticate(params[:password])
    #you are fine
    session[:user_id] = user.id

    redirect to "/home"
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

# --------------- HOME > USER'S PAGE -------------
get '/home' do
  if logged_in?
    @pets = Animal.where(user_id: session[:user_id])
    @matches = Match.where(user_id: session[:user_id])
    erb :user_home
  else
    redirect to "/"
  end
end

#--------------------- SEARCH ----------------------
get '/search' do
  if logged_in?
    @nsw = City.where(state: '1').order('name ASC')
    @qld = City.where(state: '2').order('name ASC')
    @sa = City.where(state: '3').order('name ASC')
    @tas = City.where(state: '4').order('name ASC')
    @vic = City.where(state: '5').order('name ASC')
    @wa = City.where(state: '6').order('name ASC')
    @act = City.where(state: '7').order('name ASC')
    @nt = City.where(state: '8').order('name ASC')
    @states = State.all
    @breeds = DogBreed.all
    erb :search_new
  else
    redirect to "/"
  end
end

get "/search/result" do
  @pets = Animal.where(city_id: params[:city], species: params[:species], dog_breed_id: params[:breed], gender: params[:gender])
  erb :search_show
end

#---------------------MATCH----------------------
post "/match/add" do
  pet = Animal.find(params[:pet_match])
  match = Match.new
  match.user_id = session[:user_id]
  match.animal_id = pet.id
  match.save
  redirect to '/home'
end

delete "/match/:id/delete" do
  Match.find(params[:id]).destroy
  redirect to '/home'

end
