require 'sinatra/base'
require 'sinatra'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  before do
    @library = Bookmark.all
  end

  get '/' do
    erb(:index)
  end

  get '/library' do
    erb(:library)
  end
end
