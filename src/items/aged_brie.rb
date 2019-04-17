require_relative '../../src/item'

class AgedBrie < Item

  QUALITY_FACTOR_DEFAULT = 1

   def get_quality_update_factor
    QUALITY_FACTOR_DEFAULT
  end
end