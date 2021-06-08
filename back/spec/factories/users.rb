FactoryBot.define do
  factory :user do
    id                     {1001}
    name                   {"test"}
    email                  {"test@gmail.com"}
    password               {"12345678"}
    password_confirmation  {"12345678"}
  end

  #after(:build) do |user|
  #  user.posts << build(title: unknown title, content: unknown content)
  #end
end