class GildedRose
  attr_reader :name, :days_remaining, :quality

  def initialize(name:, days_remaining:, quality:)
    @name = name
    @days_remaining = days_remaining
    @quality = quality
  end

  def days_remaining
    return @item.days_remaining if @item
    @days_remaining
  end

  def quality
    return @item.quality if @item
    @quality
  end

  def normal_tick
    @item = Normal.new(@days_remaining, @quality)
    @item.tick
  end

  def brie_tick
    @item = Brie.new(@days_remaining, @quality)
    @item.tick
  end

  def sulfuras_tick
    @item = Sulfuras.new(@days_remaining, @quality)
    @item.tick
  end

  def backstage_tick
    @item = Backstage.new(@days_remaining, @quality)
    @item.tick
  end


  def tick
    case @name
    when 'Normal Item'
      return normal_tick
    when 'Aged Brie'
      return brie_tick
    when 'Sulfuras'
      return sulfuras_tick
    when 'Backstage passes to a TAFKAL80ETC concert'
      return backstage_tick
    end
  end
end
