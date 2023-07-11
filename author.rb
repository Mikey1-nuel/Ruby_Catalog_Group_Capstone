class Author
    attr_reader :id, :first_name, :last_name, :item
  
    def initialize(name)
      @id = id
      @first_name = first_name
      @last_name = last_name
      @item = []
    end
  
    def add_item(item)
      @items << item
      item.author = self
    end
  end
  
   