require 'pg'

class Bookmark
  attr_reader :url

  def self.all
    begin
      con = PG.connect :dbname => 'bookmark_manager', :user => 'samworrall'
      con.exec "SELECT * FROM bookmarks"
    end
  end

  def initialize(url)
    @url = url
  end

end
