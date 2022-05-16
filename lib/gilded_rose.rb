require 'normal'
class GildedRose
  attr_reader :name, :days_remaining, :quality

  def initialize(name:, days_remaining:, quality:)
    @name = name
    @days_remaining = days_remaining
    @quality = quality
  end

  def tick
    case @name
    when 'Normal Item'
      return normal_tick
    when 'Aged Brie'
      return brie_tick
    when 'Sulfuras, Hand of Ragnaros'
      return sulfuras_tick
    when 'Backstage passes to a TAFKAL80ETC concert'
      return backstage_tick
    end
  end

  def normal_tick
    @item = Normal.new(@quality, @days_remaining)
    @item.tick
  end

  def quality
    return @item.quality if @item
  end

  def days_remaining
    return @item.days_remaining if @item
  end

  def brie_tick
    @days_remaining -= 1
    return if @quality >= 50

    @quality += 1 if @days_remaining <= 0
    @quality += 1 if @quality < 50
  end

  def sulfuras_tick; end

  def backstage_tick
    @days_remaining -= 1
    return if @quality >= 50
    @quality += 1

    @quality += 1 if @days_remaining < 10
    @quality += 1 if @days_remaining < 5
    @quality = 0 if @days_remaining < 0
  end
end
