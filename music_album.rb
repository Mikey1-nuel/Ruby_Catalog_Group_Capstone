require_relative 'item'

class MusicAlbum < Item
  attr_accessor :title, :artist, :release_date, :label, :on_spotify

  def initialize(title, artist, release_date, label)
    super(release_date)
    @title = title
    @artist = artist
    @label = label
    @on_spotify = false
  end

  def can_be_archived?
    super && @on_spotify
  end
end
