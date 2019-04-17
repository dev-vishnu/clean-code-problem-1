class Item

  attr_accessor :sell_in, :quality

  MAX_QUALITY = 50
  MIN_QUALITY = 0

  LEGENDRY_ITEMS = ["Sulfuras"]

  def initialize(sell_in,quality)
    @sell_in = sell_in
    @quality = quality
  end

  def update
    if !legendry?
      update_sell_in
      update_quality
    end
  end

  def legendry?
    LEGENDRY_ITEMS.include?(self.class.name)
  end

  def update_sell_in
    @sell_in -= 1
  end

  def update_quality
    new_quality = @quality + get_quality_update_factor
    if in_quality_constraints?(new_quality)
      @quality = new_quality
    end
  end

  def in_quality_constraints?(quality)
    quality <= MAX_QUALITY && quality >= MIN_QUALITY
  end

end