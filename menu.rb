def menu(app)
  app.options
  print 'Prompt > '
  gets.chomp.to_i
end

def manage_selection(app, option)
  tasks = {
    1 => :list_books,
    2 => :list_albums,
    3 => :list_games,
    4 => :list_genres,
    5 => :list_labels,
    6 => :list_authors,
    7 => :add_book,
    8 => :add_album,
    9 => :add_game,
    10 => :save_and_exit,
    default: :invalid_option
  }

  selection = tasks[option] || tasks[:default]
  app.send(selection)
end

def home(app)
  puts '------------------------------'
  puts 'Welcome to Catalog of my things!'
  puts '------------------------------'

  loop do
    option = menu(app)
    manage_selection(app, option)
    puts "\n"
  end
end
