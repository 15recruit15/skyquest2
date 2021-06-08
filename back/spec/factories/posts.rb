FactoryBot.define do
  factory :post do
    association :user 
    title     {"test-title"}
    content   {"test-content"}
  end
end