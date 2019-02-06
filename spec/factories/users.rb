FactoryBot.define do
  factory :user do
    first_name { "MyString" }
    last_name { "MyString" }
    description { "MyText" }
    email { "test@test.test" }
    city_id { City.last.id }
    age { 1 }
  end
end
