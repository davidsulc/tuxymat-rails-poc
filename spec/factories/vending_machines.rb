# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence(:serial_number){|n| "serial_number_#{n}"}
  
  factory :vending_machine do
    serial_number { generate(:serial_number) }
  end
end
