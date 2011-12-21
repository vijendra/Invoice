class Invoice
  attr_accessor :date, :company, :invoice_items
  
  def initialize(supplier, customer)
    self.date = DateTime.now.strftime("%d-%m-%Y %H:%M")
    @supplier, @customer = supplier, customer
    @invoice_items = []
  end
  
  def supplier_details
    @supplier.details
  end
  
  def customer_details
    @customer.details
  end
  
  def add_item(invoice_item)
    @invoice_items << invoice_item
  end
end
