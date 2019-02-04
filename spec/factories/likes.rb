FactoryBot.define do
  factory :like do
    user_id { User.last.id }
    gossip_id { Gossip.last.id }
    comment_id { Comment.last.id }
  end
end
