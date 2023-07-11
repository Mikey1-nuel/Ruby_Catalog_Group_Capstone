require_relative '../book'

RSpec.describe Book do
  let(:publisher) { 'Publisher 1' }
  let(:cover_state) { 'good' }
  let(:publish_date) { '2021-01-01' }

  describe '#initialize' do
    it 'creates a new book instance' do
      book = Book.new(publisher, cover_state, publish_date)
      expect(book).to be_a(Book)
      expect(book.publisher).to eq(publisher)
      expect(book.cover_state).to eq(cover_state)
      expect(book.archived).to be(false)
    end
  end

  describe '#can_be_archived?' do
    context 'when the cover state is good' do
      it 'returns false' do
        book = Book.new(publisher, 'good', Date.new(2020, 10, 10))
        expect(book.can_be_archived?).to be(false)
      end
    end

    context 'when the cover state is bad' do
      it 'returns true' do
        book = Book.new(publisher, 'bad', Date.new(2010, 10, 10))
        expect(book.can_be_archived?).to be(true)
      end
    end
  end

  describe '#move_to_archive' do
    it 'archives the book' do
      book = Book.new(publisher, cover_state, Date.new(2010, 10, 10))
      book.move_to_archive
      expect(book.archived).to be(true)
    end

    it 'does not archive the book if it cannot be archived' do
      book = Book.new(publisher, 'good', Date.new(2020, 10, 10))
      book.move_to_archive
      expect(book.archived).to be(false)
    end
  end
end
