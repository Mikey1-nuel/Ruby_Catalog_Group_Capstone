require './genre'
require './music_album'

RSpec.describe Genre do
  let(:genre_name) { 'Rock' }
  let(:genre) { Genre.new(genre_name) }
  let(:album) { MusicAlbum.new('Title', 'Artist', Date.new(2023, 1, 1), 'Label') }

  describe '#add_item' do
    it 'adds the item to the collection of items and sets the genre' do
      genre.add_item(album)

      expect(genre.items).to include(album)
      expect(album.genre).to eq(genre)
    end
  end
end
