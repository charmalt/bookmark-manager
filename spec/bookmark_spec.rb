require './lib/bookmark.rb'

describe Bookmark do

  subject(:bookmark) { described_class.new("https://www.makersacademy.com/") }

  describe '#self.all' do
    it 'returns an array' do
      expect(Bookmark.all).to (be_instance_of(PG::Result))
    end
  end

  describe '#url' do
    it 'returns the url of the bookmark' do
      expect(bookmark.url).to eq("https://www.makersacademy.com/")
    end
  end

end
