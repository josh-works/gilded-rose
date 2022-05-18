require 'item'
require 'normal'
require 'brie'
require 'backstage'
require 'mana'
class GildedRose
  DEFAULT_CLASS = Item
  SPECIALIZED_CLASSES = {
    'Normal Item' => Normal,
    'Aged Brie' => Brie,
    'Sulfuras, Hand of Ragnaros' => Item,
    'Backstage passes to a TAFKAL80ETC concert' => Backstage,
    'Conjured Mana Cake' => Mana }
  def initialize(name:, days_remaining:, quality:)
    @item = (SPECIALIZED_CLASSES[name] || DEFAULT_CLASS).new(days_remaining, quality)
  end

  def days_remaining
    @item.days_remaining
  end

  def quality
    @item.quality
  end

  def tick
    @item.tick
  end
end
