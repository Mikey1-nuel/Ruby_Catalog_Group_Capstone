require_relative 'author'
require_relative 'item'
require 'json'

def load_authors_json
  authors = JSON.parse(fetch_data('authors'))
  items = JSON.parse(fetch_data('items'))

  authors.each do |author|
    @authors << Author.new(author['name'])
  end

  items.each do |item|
    author = @authors.find { |a| a.name == item['author'] }
    next if author.nil?

    create_item(author, item_data)
  end
end

def create_item(author, item_data)
  case item_data['type']
  when 'book'
    author.add_item(Book.new(item_data['publisher'], item_data['cover_state'], Date.parse(item_data['publish_date'])))
  when 'music_album'
    author.add_item(MusicAlbum.new(item_data['title'], item_data['artist'], Date.parse(item_data['release_date']),
                                   item_data['label']))
  when 'game'
    author.add_item(Game.new(item_data['title'], item_data['platform'], Date.parse(item_data['last_played_at']),
                             Date.parse(item_data['publish_date'])))
  end
end

def save_authors_json
  authors_arr = []

  @authors.each do |author|
    authors_arr << { 'id' => author.id,
                     'name' => author.name }
  end

  File.write('data/authors.json', JSON.pretty_generate(authors_arr))

  items_arr = []

  @authors.each do |author|
    author.items.each do |item|
      item_data = {
        'author' => author.name,
        'type' => item.class.to_s.downcase,
        'publisher' => item.publisher,
        'cover_state' => item.cover_state,
        'publish_date' => item.publish_date.to_s,
        'title' => item.title,
        'artist' => item.artist,
        'release_date' => item.release_date.to_s,
        'label' => item.label,
        'platform' => item.platform,
        'last_played_at' => item.last_played_at.to_s
      }
      items_arr << item_data
    end
  end

  File.write('data/items.json', JSON.pretty_generate(items_arr))
end

def add_author
  puts 'What is the name of the author?'
  name = gets.chomp

  author = Author.new(name)
  @authors << author

  save_authors_json

  puts 'Author created successfully!'
end

def list_authors
  @authors.each do |author|
    puts '------------------------------'
    puts "Author: #{author.name}"
    puts 'Items:'
    author.items.each do |item|
      case item
      when Book
        puts "- Book: #{item.publisher} (#{item.publish_date})"
      when MusicAlbum
        puts "- Music Album: #{item.title} by #{item.artist} (#{item.release_date})"
      when Game
        puts "- Game: #{item.title} (#{item.platform})"
      end
    end
    puts '------------------------------'
  end
end
