require_relative 'book_interface'
require_relative 'music_album_interface'
require_relative 'genre_interface'
require_relative 'game_interface'
require_relative 'author_interface'
require_relative 'menu'

class App
  attr_accessor :books, :albums, :games, :genres, :labels, :authors

  def initialize
    @books = []
    @albums = []
    @games = []
    @genres = []
    @labels = []
    @authors = []
  end

  def fetch_files
    load_books_json
    load_music_albums_json
    load_genres_json
    load_games_json
    load_authors_json
  end

  def save_and_exit
    save_books_json
    save_music_albums_json
    save_genres_json
    save_games_json
    save_authors_json
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
    puts '11 - Add an author'
    puts '12 - Exit'
  end

  def menu
    options
    print 'Prompt > '
    gets.chomp.to_i
  end

  def manage_selection(option)
    case option
    when 1
      list_books
    when 2
      list_music_albums
    when 3
      list_games
    when 4
      list_genres
    when 5
      list_labels
    when 6
      list_authors
    when 7
      add_book
    when 8
      add_music_album
    when 9
      add_game
    when 10
      add_genre
    when 11
      add_author
    when 12
      save_and_exit
    else
      invalid_option
    end
  end

  def home
    puts '------------------------------'
    puts 'Welcome to Catalog of my things!'
    puts '------------------------------'

    loop do
      option = menu
      manage_selection(option)
      puts "\n"
    end
  end
end

def main
  app = App.new
  app.fetch_files

  app.home
end

main
