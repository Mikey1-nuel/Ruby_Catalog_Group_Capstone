require_relative 'item'

class MusicAlbum < Item
  attr_accessor :title, :artist, :release_date, :label

  def initialize(title, artist, release_date, label)
    super(release_date)
    @title = title
    @artist = artist
    @label = label
  end
end
