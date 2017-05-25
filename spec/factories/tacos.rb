FactoryGirl.define do
  factory :taco do
    meat { ["chicken", "steak" ].sample }
    rice { Faker::Boolean.boolean }
    salsa { Faker::Boolean.boolean }
    notes { Faker::Lorem.sentence }
  end
end