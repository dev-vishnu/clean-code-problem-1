require_relative '../../src/item'

class Conjured < Item

  QUALITY_FACTOR_DEFAULT = -2

  def get_quality_upgrade_factor
    QUALITY_FACTOR_DEFAULT
  end

end