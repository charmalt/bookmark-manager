require './lib/bookmark.rb'

describe Bookmark do

  subject(:bookmark) { described_class.new }

  describe '#self.all' do

    it 'returns hard coded list of bookmarks' do
      expect(Bookmark.all).to all(be_instance_of(Bookmark))
    end

  end

end
