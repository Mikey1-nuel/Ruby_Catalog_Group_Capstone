require_relative '../book'
require_relative '../label'

describe Label do
  it('should create a Label') do
    label = Label.new('My Book', 'Red')
    expect(label.color).to eq('Red')
  end

  it('should add items to the items array') do
    book = Book.new('Mega', 'bad', '10-10-2019')

    label = Label.new('My Book', 'Blue')

    label.add_item(book)

    expect(label.color).to eq('Blue')
    expect(book.label.title).to eq('My Book')
  end
end
