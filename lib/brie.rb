class Brie
  attr_reader :days_remaining, :quality
  def initialize(quality, days_remaining)
    @quality, @days_remaining = quality, days_remaining
  end

  def tick
    @days_remaining -= 1
    return if @quality >= 50

    @quality += 1 if @days_remaining <= 0
    @quality += 1 if @quality < 50
  end
end
