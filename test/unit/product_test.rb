require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

describe Product do
  before do
    @product =  Product.new('Roots Comb Brown No.01', 'pcs', 125.00)
  end
  
  describe "initialization" do
    it "should set product" do
      @product.name.must_equal 'Roots Comb Brown No.01'
    end
  
    it "should set packaging unit" do
      @product.packaging_unit.must_equal 'pcs'
    end
  
    it "should set mrp" do
      @product.mrp.must_equal 125.00
    end

  end  
 
end

