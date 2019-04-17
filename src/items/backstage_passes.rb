require_relative '../../src/item'

class BackstagePasses < Item

  QUALITY_FACTOR_TEN_DAYS_LEFT = 2
  QUALITY_FACTOR_FIVE_DAYS_LEFT = 3
  QUALITY_FACTOR_DEFAULT = 1

  SELL_IN_10_DAYS = 10
  SELL_IN_5_DAYS = 5


  def get_quality_update_factor
    if @sell_in <= SELL_IN_10_DAYS
      return modified_quality_update_factor
    end
    QUALITY_FACTOR_DEFAULT
  end

  def modified_quality_update_factor
    if @sell_in <= SELL_IN_5_DAYS
      return QUALITY_FACTOR_FIVE_DAYS_LEFT
    end
    QUALITY_FACTOR_TEN_DAYS_LEFT
  end

end