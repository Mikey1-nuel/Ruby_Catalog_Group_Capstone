require_relative 'music_album'
require_relative 'label'
require_relative 'tools'
require 'json'

def load_music_albums_json
  music_albums = JSON.parse(fetch_data('music_albums'))
  labels = JSON.parse(fetch_data('labels'))

  music_albums.each do |album|
    date_string = album['release_date']
    year = date_string[0, 4].to_i
    month = date_string[5, 7].to_i
    day = date_string[8, 10].to_i

    @albums << MusicAlbum.new(album['title'], album['artist'], Date.new(year, month, day), album['label'])
  end

  labels.each do |label|
    @labels << Label.new(label['title'], label['color'])
  end
end

def save_music_albums_json
  albums_arr = []

  @albums.each do |album|
    albums_arr << { 'id' => album.id,
                    'title' => album.title,
                    'artist' => album.artist,
                    'release_date' => album.release_date,
                    'label' => album.label }
  end

  File.write('data/music_albums.json', JSON.pretty_generate(albums_arr))
end

def add_music_album
  puts 'What is the title of the music album?'
  title = gets.chomp

  puts 'Who is the artist of the music album?'
  artist = gets.chomp

  puts 'What is the release date of the music album? (YYYY-MM-DD)'
  release_date = gets.chomp

  puts 'What record label does the music album belong to?'
  label = gets.chomp

  album = MusicAlbum.new(title, artist, Date.parse(release_date), label)
  @albums << album

  save_music_albums_json

  puts 'Music album created successfully!'
end

def list_music_albums
  @albums.each do |album|
    puts '------------------------------'
    puts "Title: #{album.title}"
    puts "Artist: #{album.artist}"
    puts "Release Date: #{album.release_date}"
    puts "Record Label: #{album.label}"
    puts '------------------------------'
  end
end
