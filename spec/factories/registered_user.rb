FactoryGirl.define do
  factory :registered_user do
    username Faker::Internet.user_name
  end
end
