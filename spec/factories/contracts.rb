# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contract do
    start_date "2013-01-20"
    vending_machine
    partner
  end
end
