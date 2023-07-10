require 'date'
require_relative '../item'

RSpec.describe Item do
  describe '#can_be_archived?' do
    it 'returns true for items older than 10 years' do
      publish_date = Date.today - (11 * 365)
      item = Item.new(publish_date)
      expect(item.can_be_archived?).to be(true)
    end

    it 'returns false for items less than 10 years old' do
      publish_date = Date.today - (9 * 365)
      item = Item.new(publish_date)
      expect(item.can_be_archived?).to be(false)
    end
  end
end
