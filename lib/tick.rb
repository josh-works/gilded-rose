class Tick
  attr_reader :days_remaining, :quality
  def initialize(days_remaining, quality)
    @days_remaining, @quality = days_remaining, quality
  end
end
