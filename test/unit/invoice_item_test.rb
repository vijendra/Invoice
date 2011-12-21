require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

describe InvoiceItem do
  before do
    @product = Product.new('Roots Comb Brown No.01', 'pcs', 125.00)
    @invoice_item =  InvoiceItem.new(@product, 89.29, 6.00, 5.00, 9.09)
  end
  
  describe "initialization" do
    it "should set product" do
      @invoice_item.product.must_equal @product
    end
  
    it "should be able to get product or particluars name" do
      @invoice_item.product_or_particulars.must_equal 'Roots Comb Brown No.01'
    end
    
    it "should be able to get packaging unit" do
      @invoice_item.packaging_unit.must_equal 'pcs'
    end
    
    it "should be able to get mrp price" do
      @invoice_item.mrp.must_equal 125.00
    end
  end  
 
  it "should be able to calculate gross amount" do
    @invoice_item.gross_amount.must_equal 535.74
  end
  
  it "should be able to calculate net amount" do
    @invoice_item.net_amount.must_equal 499.86
  end
end

