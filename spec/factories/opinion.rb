FactoryGirl.define do
  factory :opinion do
    agree false
    user
    content
  end
end
