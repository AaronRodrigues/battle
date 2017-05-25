require 'sinatra/base'
require './lib/player'


class Battle < Sinatra::Base

enable :sessions
  get '/' do
    "Battle!!"
    erb :index
  end

  get '/names' do
    @name = params[:name]
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
  @player_1 = $player_1
  @player_2 = $player_2
  erb :play
end

  get '/attack' do
  @player_1 = $player_1
  @player_2 = $player_2
  @player_1.attack(@player_2)
  erb :attack
  end

   run! if app_file == $0
end
