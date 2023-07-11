require 'date'

class Item
  attr_reader :id, :archived
  attr_accessor :publish_date, :label, :genre

  def initialize(publish_date, archived: false)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = archived
  end

  def add_label(label)
    @label = label
  end

  def move_to_archive
    return unless can_be_archived?

    @archived = true
  end

  def can_be_archived?
    current_date = Date.today
    cutoff_date = current_date - (10 * 365)
    @publish_date < cutoff_date
  end
end
