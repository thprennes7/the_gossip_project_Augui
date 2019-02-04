FactoryBot.define do
  factory :gossip do
    title { "MyString" }
    content { "MyText" }
    user_id { User.last.id }
  end
end
