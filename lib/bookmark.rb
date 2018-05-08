require 'pg'

class Bookmark
  attr_reader :url

  def self.all
    if (ENV['RACK_ENV'] == 'test')
      begin
        con = PG.connect :dbname => 'bookmark_manager_test', :user => 'charlenechetcuti'
        con.exec "SELECT * FROM bookmarks"
      end
    else
      begin
        con = PG.connect :dbname => 'bookmark_manager', :user => 'charlenechetcuti'
        con.exec "SELECT * FROM bookmarks"
      end
    end
  end

  def initialize(url)
    @url = url
  end
end
