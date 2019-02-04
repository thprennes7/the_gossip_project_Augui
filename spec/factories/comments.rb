FactoryBot.define do
  factory :comment do
    content { "MyText" }
    user_id { User.last.id }
    gossip_id { Gossip.last.id }
  end
end
