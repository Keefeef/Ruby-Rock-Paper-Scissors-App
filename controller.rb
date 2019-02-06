require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry'
require_relative './models/rps'
also_reload './models/*'

get '/rock_scissors/:rock/:scissors' do
  rps = Rps.new(params[:rock], params[:scissors], params[:paper])
  @winner = rps.rock_scissors
  erb (:result)
end

get '/rock_paper/:rock/:paper' do
  rps = Rps.new(params[:rock], params[:scissors], params[:paper])
  @winner = rps.rock_paper
  erb (:result)
end

get '/paper_scissors/:paper/:scissors' do
  rps = Rps.new(params[:rock], params[:scissors], params[:paper])
  @winner = rps.paper_scissors
  erb (:result)
end

get '/paper_paper/:paper' do
  rps = Rps.new(params[:rock], params[:scissors], params[:paper])
  @winner = rps.paper_paper
  erb (:result)
end

get '/rock_rock/:rock' do
  rps = Rps.new(params[:rock], params[:scissors], params[:paper])
  @winner = rps.rock_rock
  erb (:result)
end

get '/scissors_scissors/:scissors' do
  rps = Rps.new(params[:rock], params[:scissors], params[:paper])
  @winner = rps.scissors_scissors
  erb (:result)
end

get '/' do
  erb (:home)
end
