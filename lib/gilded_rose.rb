module GildedRose
  def self.for(name:, days_remaining:, quality:)
    @item = klass_for(name).new(quality, days_remaining)
  end

  def self.klass_for(name)
    case name
    when 'Normal Item'
      Normal
    when 'Aged Brie'
      Brie
    when 'Sulfuras, Hand of Ragnaros'
      Item
    when 'Backstage passes to a TAFKAL80ETC concert'
      Backstage
    end
  end
end
