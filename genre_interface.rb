require_relative 'genre'
require_relative 'item'
require 'json'

def load_genres_json
  genres = JSON.parse(fetch_data('genres'))
  items = JSON.parse(fetch_data('items'))

  genres.each do |genre|
    @genres << Genre.new(genre['name'])
  end

  items.each do |item|
    genre = @genres.find { |g| g.name == item['genre'] }
    next if genre.nil?

    if item['type'] == 'book'
      genre.add_item(Book.new(item['publisher'], item['cover_state'], Date.parse(item['publish_date'])))
    elsif item['type'] == 'music_album'
      genre.add_item(MusicAlbum.new(item['title'], item['artist'], Date.parse(item['release_date']), item['label']))
    end
  end
end

def save_genres_json
  genres_arr = []

  @genres.each do |genre|
    genres_arr << { 'name' => genre.name }
  end

  File.write('data/genres.json', JSON.pretty_generate(genres_arr))

  items_arr = []

  @genres.each do |genre|
    genre.items.each do |item|
      item_data = {
        'id' => item.id,
        'genre' => genre.name,
        'type' => item.class.to_s.downcase,
        'publisher' => item.publisher,
        'cover_state' => item.cover_state,
        'publish_date' => item.publish_date.to_s,
        'title' => item.title,
        'artist' => item.artist,
        'release_date' => item.release_date.to_s,
        'label' => item.label
      }
      items_arr << item_data
    end
  end

  File.write('data/items.json', JSON.pretty_generate(items_arr))
end

def add_genre
  puts 'What is the name of the genre?'
  name = gets.chomp

  genre = Genre.new(name)
  @genres << genre

  save_genres_json

  puts 'Genre created successfully!'
end

def list_genres
  @genres.each do |genre|
    puts '------------------------------'
    puts "Genre: #{genre.name}"
    puts 'Items:'
    genre.items.each do |item|
      if item.is_a?(Book)
        puts "- Book: #{item.publisher} (#{item.publish_date})"
      elsif item.is_a?(MusicAlbum)
        puts "- Music Album: #{item.title} by #{item.artist} (#{item.release_date})"
      end
    end
    puts '------------------------------'
  end
end
