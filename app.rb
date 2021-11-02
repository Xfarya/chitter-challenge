require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/peep.rb'

class ChitterChallenge < Sinatra::Base
enable :sessions, :method_override


  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "All chitter peeps"
  end

  get '/peeps' do
    @peeps = Peep.all
    erb :'peeps/index'
  end

  get '/peeps/new' do
   erb :'peeps/new'
  end

  post '/peeps' do
    Peep.create(peep: params['peep']);
    redirect '/peeps'
  end

  delete '/peeps/:id' do
    Peep.delete(id: params[:id])
    redirect '/peeps'
  end

  run! if app_file == $0
end
