require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

describe Company do
  before do
    @company = Company.new('Hypothetical company A', '#28, abc lane', 'Bangalore', '560 002', '29880000000', '21000000')
  end
    
  describe "initialization" do
    it "should set name" do
      @company.name.must_equal 'Hypothetical company A'
    end
  
    it "should set address line" do
      @company.address_line.must_equal '#28, abc lane'
    end
  
    it "should set city" do
      @company.city.must_equal 'Bangalore'
    end
  
    it "should set post code " do
      @company.post_code.must_equal '560 002'
    end
  
    it "should set telephone" do
      @company.phone.must_equal '21000000'
    end
    
    it "should set tax invoice number" do
      @company.tax_invoice_number.must_equal '29880000000'
    end
  end  
  
  it "should be able to return full address" do
     @company.full_address.must_equal "#28, abc lane\nBangalore 560 002"
  end
  
  it "should be able to return complete details" do
     @company.details.must_equal "Hypothetical company A\n#28, abc lane\nBangalore 560 002 21000000\n29880000000"
  end
  
  it "should be of type Company" do
    Supplier.new('company A', '#28, abc lane', 'Bangalore', '560 002', '29880000000', '21000000').must_be_kind_of Company
    Customer.new('company A', '#28, abc lane', 'Bangalore', '560 002', '29880000000', '21000000').must_be_kind_of Company
  end
end
