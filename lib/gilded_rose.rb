require 'normal'
require 'brie'
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

  def quality
    return @item.quality if @item
    @quality
  end

  def days_remaining
    return @item.days_remaining if @item
    @days_remaining
  end

  def normal_tick
    @item = Normal.new(@quality, @days_remaining)
    @item.tick
  end

  def brie_tick
    @item = Brie.new(@quality, @days_remaining)
    @item.tick
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
