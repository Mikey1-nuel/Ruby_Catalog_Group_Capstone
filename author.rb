require_relative 'item'

class Author
  attr_reader :id, :name, :items

  @@next_id = 1

  def initialize(name)
    @id = @@next_id
    @@next_id += 1
    @name = name
    @items = []
  end

  def add_item(item)
    item.author = self
    @items << item
  end
end
