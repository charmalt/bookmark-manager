require 'sinatra/base'
require 'sinatra'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/library' do
    erb(:library)
  end
end
