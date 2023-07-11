require './music_album'

RSpec.describe MusicAlbum do
  let(:release_date) { Date.new(2023, 1, 1) }
  let(:album) { MusicAlbum.new('Title', 'Artist', release_date, 'Label') }

  describe '#can_be_archived?' do
    context 'when on_spotify is false' do
      it 'returns false' do
        album.on_spotify = false
        allow(album).to receive(:super_can_be_archived?).and_return(true)

        expect(album.can_be_archived?).to eq(false)
      end
    end

    context 'when can_be_archived? from the parent class returns false' do
      it 'returns false' do
        album.on_spotify = true
        allow(album).to receive(:super_can_be_archived?).and_return(false)

        expect(album.can_be_archived?).to eq(false)
      end
    end
  end
end
