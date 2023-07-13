require_relative 'game'
require_relative 'item'
require 'json'

def load_games_json
  games = JSON.parse(fetch_data('games'))

  games.each do |game|
    date_string = game['last_played_at']
    year = date_string[0, 4].to_i
    month = date_string[5, 7].to_i
    day = date_string[8, 10].to_i

    @games << Game.new(game['title'], game['platform'], Date.new(year, month, day), game['publish_date'])
  end
end

def save_games_json
  games_arr = []

  @games.each do |game|
    games_arr << { 'id' => game.id,
                   'title' => game.title,
                   'platform' => game.platform,
                   'last_played_at' => game.last_played_at,
                   'publish_date' => game.publish_date }
  end

  File.write('data/games.json', JSON.pretty_generate(games_arr))
end

def add_game
  puts 'What is the title of the game?'
  title = gets.chomp

  puts 'On what platform is the game available?'
  platform = gets.chomp

  puts 'When was the game last played? (YYYY-MM-DD)'
  last_played_at = gets.chomp

  puts 'What is the release date of the game? (YYYY-MM-DD)'
  publish_date = gets.chomp

  game = Game.new(title, platform, Date.parse(last_played_at), Date.parse(publish_date))
  @games << game

  save_games_json

  puts 'Game created successfully!'
end

def list_games
  @games.each do |game|
    puts '------------------------------'
    puts "Title: #{game.title}"
    puts "Platform: #{game.platform}"
    puts "Last Played At: #{game.last_played_at}"
    puts "Release Date: #{game.publish_date}"
    puts '------------------------------'
  end
end
