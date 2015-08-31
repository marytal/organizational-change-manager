FactoryGirl.define do
  factory :ticket do
    name Faker::Lorem.sentence
    description Faker::Lorem.paragraph
    registered_user
    closed false
  end
end
