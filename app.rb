require_relative 'book_interface'
require_relative 'music_album_interface'
require_relative 'genre_interface'

class App
  attr_accessor :books, :albums, :games, :genres

  def initialize
    @books = []
    @albums = []
    @games = []
    @labels = []
    @authors = []
    @genres = []
  end

  def fetch_files
    load_books_json
    load_music_albums_json
    load_genres_json
  end

  def save_and_exit
    save_books_json
    save_music_albums_json
    save_genres_json
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
    puts '10 - Add a genre'
    puts '11 - Exit'
  end
end

