require 'sinatra'
require 'sinatra/activerecord'
set :database, "sqlite3:microblog.sqlite3"
require './models.rb'


get '/' do
  @users = User.all
  erb :home
end

get '/edit/:id' do
  @user = User.find(params[:id])
  erb :edit 
end

post 'edit/:id' do
  @user = @user.update_attributes(params)
end
