class App
  attr_accessor :books, :albums, :games
  def initialize
    @books = []
    @albums = []
    @games = []
    @labels = []
    @authors = []
    @genres = []
  end
  def save_and_exit
    puts 'Thank you for using this app. Goodbye!'
    exit
  end
  def invalid_option
    puts 'Invalid option'
  end
  def options
    puts 'Please choose an option from the following: '
    puts '1 - List all books'
    puts '2 - List all music albums'
    puts '3 - List all games'
    puts '4 - List all genres'
    puts '5 - List all labels'
    puts '6 - List all authors'
    puts '7 - Add a book'
    puts '8 - Add a music album'
    puts '9 - Add a game'
    puts '10 - Exit'
  end
end