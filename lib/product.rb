class Product
  attr_accessor :name, :packaging_unit, :mrp
  
  def initialize(name, packaging_unit, mrp)
    @name, @packaging_unit, @mrp = name, packaging_unit, mrp
  end

end
