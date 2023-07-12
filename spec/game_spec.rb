require './game'

RSpec.describe Game do
  let(:publish_date) { Date.new(2022, 1, 1) }
  let(:last_played_at) { Date.new(2020, 1, 1) }
  let(:game) { Game.new('Title', 'Platform', last_played_at, publish_date) }

  describe '#initialize' do
    it 'creates a new Game object' do
      expect(game).to be_an_instance_of(Game)
    end

    it 'sets the title' do
      expect(game.title).to eq('Title')
    end

    it 'sets the platform' do
      expect(game.platform).to eq('Platform')
    end

    it 'sets the last played at date' do
      expect(game.last_played_at).to eq(last_played_at)
    end

    it 'sets the publish date' do
      expect(game.publish_date).to eq(publish_date)
    end
  end

  describe '#can_be_archived?' do
    # context 'when the last played at date is older than 2 years' do
    #   let(:last_played_at) { Date.new(2019, 1, 1) }

    #   it 'returns true' do
    #     expect(game.can_be_archived?).to be true
    #   end
    # end

    context 'when the last played at date is within 2 years' do
      let(:last_played_at) { Date.new(2021, 1, 1) }

      it 'returns false' do
        expect(game.can_be_archived?).to be false
      end
    end
  end
end
