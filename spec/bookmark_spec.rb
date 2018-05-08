require './lib/bookmark.rb'

describe Bookmark do

  subject(:bookmark) { described_class.new("https://www.makersacademy.com/") }

  describe '#self.all' do
    it 'returns hard coded list of bookmarks' do
      expect(Bookmark.all).to all(be_instance_of(Bookmark))
    end
  end

  describe '#url' do
    it 'returns the url of the bookmark' do
      expect(bookmark.url).to eq("https://www.makersacademy.com/")
    end
  end

end
