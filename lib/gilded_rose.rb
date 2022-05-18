class GildedRose
  def initialize(name:, days_remaining:, quality:)
    @item = klass_for(name).new(days_remaining, quality)
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

  def klass_for(name)
    case name
    when 'Normal Item'
      Normal
    when 'Aged Brie'
      Brie
    when 'Sulfuras, Hand of Ragnaros'
      Sulfuras
    when 'Backstage passes to a TAFKAL80ETC concert'
      Backstage
    end
  end
end
