FactoryGirl.define do
  factory :content do
    content Faker::Lorem.paragraph
    status "positive"
    suggestion false
    ticket
    user
  end
end
