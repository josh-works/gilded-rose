require 'normal'
require 'item'
require 'brie'
require 'backstage'
module GildedRose

  DEFAULT_CLASS = Item
  SPECIALIZED_CLASSES = {
    'Normal Item' => Normal,
    'Aged Brie' =>  Brie,
    'Backstage passes to a TAFKAL80ETC concert' => Backstage
  }
  def self.for(name:, days_remaining:, quality:)
    (SPECIALIZED_CLASSES[name] || DEFAULT_CLASS).new(quality, days_remaining)
  end
end
