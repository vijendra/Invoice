require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

describe Invoice do
  before do
    @supplier = Supplier.new( 'Hypothetical company A', '#28, abc lane', 'Bangalore', '560 002', '29880000000', '21000000')
    @customer = Customer.new('Hypothetical company B', '#28, abc lane', 'Mangalore', '540 002', '2988888888', '31000000')
    @invoice = Invoice.new(@supplier, @customer)
  end
  
  it "should be able to set the invoice date to current date and time" do
    @invoice.date.must_equal DateTime.now.strftime("%d-%m-%Y %H:%M")
  end
  
  it "should have a list of empty items list" do
    @invoice.invoice_items.must_be_empty
  end
  
  it "should be able to get supplier details" do
    @invoice.supplier_details.must_equal @supplier.details
  end
  
  it "should be able to get customer details" do
    @invoice.customer_details.must_equal @customer.details
  end
  
  describe "amount" do
    before do
      product1 = Product.new('Roots Comb Brown No.01', 'pcs', 125.00)
      product2 = Product.new('Roots Comb Brown No.01', 'pcs', 125.00)
      @invoice_item1 =  InvoiceItem.new(product1, 89.29, 6.00, 5.00, 9.09)
      @invoice_item2 =  InvoiceItem.new(product2, 89.29, 6.00, 5.00, 9.09)
    end
  
    it "should be able to add invoice items" do
      @invoice.add_item(@invoice_item1)
      @invoice.add_item(@invoice_item2)
      @invoice.invoice_items.must_include(@invoice_item1)
      @invoice.invoice_items.must_include(@invoice_item2)
    end
  end
end

