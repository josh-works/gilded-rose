class Sulfuras
  attr_reader :days_remaining, :quality
  def initialize(days_remaining, quality)
    @days_remaining, @quality = days_remaining, quality
  end

  def tick
  end
end
