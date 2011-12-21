FactoryGirl.define do
  factory :company  do 
    name 'Hypothetical company A'
    address_line '#28, abc lane'
    city  'Bangalore'
    post_code '560 002'
    tax_invoice_number '29880000'
    phone '21000000'
    #:name => 'Hypothetical company A', :address_line => '#28, abc lane', :city => 'Bangalore',:post_code => '560 002', :tax_invoice_number => '29880000', :phone => '21000000'
  end
end
