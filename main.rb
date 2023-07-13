require_relative 'app'
require_relative 'menu'

def main
  app = App.new
  app.fetch_files

  home(app)
end

main
