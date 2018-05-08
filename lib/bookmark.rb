class Bookmark
  attr_reader :url

  def self.all
    [Bookmark.new("https://www.makersacademy.com/"), Bookmark.new("https://www.makersacademy.com/")]
  end

  def initialize(url)
    @url = url
  end

end
