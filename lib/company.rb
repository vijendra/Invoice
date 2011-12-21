class Company
  attr_accessor :name, :address_line, :city, :post_code, :tax_invoice_number, :phone
  
  def initialize(name, address_line, city, post_code, tin, phone)
    @name, @address_line, @city, @post_code, @tax_invoice_number, @phone = name, address_line, city, post_code, tin, phone
  end
  
  def full_address
    "#{@address_line}\n#{@city} #{@post_code}"
  end
  
  def details
    "#{@name}\n#{full_address} #{@phone}\n#{@tax_invoice_number}"
  end
end

class Supplier < Company; end
class Customer < Company; end
