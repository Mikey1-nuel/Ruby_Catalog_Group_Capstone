require './author'
require './book'

RSpec.describe Author do
  let(:author) { Author.new('Stephen King') }
  let(:book) { Book.new('Publisher', 'Good', Date.new(2022, 1, 1)) }

  describe '#initialize' do
    it 'creates a new Author object' do
      expect(author).to be_an_instance_of(Author)
    end

    it 'sets the name' do
      expect(author.name).to eq('Stephen King')
    end
  end

  describe '#add_item' do
    it 'adds an item to the author' do
      author.add_item(book)
      expect(author.items).to include(book)
    end

    it 'sets the author as the item\'s author' do
      author.add_item(book)
      expect(book.author).to eq(author)
    end
  end
end
