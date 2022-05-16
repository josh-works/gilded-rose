require 'normal'
require 'brie'
require 'sulfuras'
require 'backstage'
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
      @item = Normal.new(@quality, @days_remaining)
      @item.tick
    when 'Aged Brie'
      @item = Brie.new(@quality, @days_remaining)
      @item.tick
    when 'Sulfuras, Hand of Ragnaros'
      @item = Sulfuras.new(@quality, @days_remaining)
      @item.tick
    when 'Backstage passes to a TAFKAL80ETC concert'
      @item = Backstage.new(@quality, @days_remaining)
      @item.tick
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
end
