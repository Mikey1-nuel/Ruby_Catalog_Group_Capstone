require 'json'
require 'date'

def fetch_data(file)
  if File.exist?("data/#{file}.json")
    File.read("data/#{file}.json")
  else
    empty_json = [].to_json
    File.write("data/#{file}.json", empty_json)
    empty_json
  end
end

def date_valid?(date)
  format = '%Y-%m-%d'
  DateTime.strptime(date, format)
  true
rescue ArgumentError
  false
end
