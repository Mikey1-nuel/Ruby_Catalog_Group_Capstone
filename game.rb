require_relative 'item'

class Game < Item
  attr_accessor :title, :platform, :last_played_at

  def initialize(title, platform, last_played_at, publish_date)
    super(publish_date)
    @title = title
    @platform = platform
    @last_played_at = last_played_at
  end

  def can_be_archived?
    super && last_played_at < (Date.today - (2 * 365))
  end
end
