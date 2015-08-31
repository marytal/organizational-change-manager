FactoryGirl.define do
  factory :user do
    ip_address Faker::Internet.ip_v4_address
  end
end
