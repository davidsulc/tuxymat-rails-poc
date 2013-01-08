# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vending_machine do
    serial_number "MyString"
    purchase_price "9.99"
    age_verification false
  end
end
