class Game
  attr_reader :multi_player, :last_played_at

  def initialize(multi_player, last_played_at)
    @multi_player = multi_player
    @last_played_at = last_played_at
  end

  def can_be_archived?
    super && last_played_over_two_years_ago?
  end

  private

  def last_played_over_two_years_ago?
    last_played_date = Date.parse(last_played_at)
    last_played_date < (Date.today - 2 * 365)
  end
end

  