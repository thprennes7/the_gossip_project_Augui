FactoryBot.define do
  factory :gossip do
    title { "figaro" }
    content { "MyText" }
    user_id { User.last.id }
  end
end
