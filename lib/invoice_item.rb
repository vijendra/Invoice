class InvoiceItem
  attr_accessor :product, :price, :quantity, :vat, :discount
  
  def initialize(product, price, quantity, vat, discount)
    @product, @price, @quantity, @vat, @discount = product, price, quantity, vat, discount
  end
  
  def product_or_particulars
    @product.name
  end
  
  #TODO write these methods using some metaprogramming techniques
  def packaging_unit
    @product.packaging_unit
  end
  
  def mrp
    @product.mrp
  end
 
  def gross_amount
    @price * @quantity
  end
  
  #TODO check if tax should be applied after the discount
  def net_amount
    (gross_amount - tax_amount - discount).round(2)
  end
  
  private
  def tax_amount
    (gross_amount * @vat)/100
  end
end
