# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password 'password'
    
    trait :is_admin do
      is_admin true
    end
    
    factory :admin, traits: [:is_admin]
  end
end
