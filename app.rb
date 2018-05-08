require 'sinatra/base'
require 'sinatra'

class Bookmark_Manager < Sinatra::Base

  get '/' do
    erb(:index)
  end
end
