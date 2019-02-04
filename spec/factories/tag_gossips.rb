FactoryBot.define do
  factory :tag_gossip do
    tag_id { Tag.last.id }
    gossip_id { Gossip.last.id }
  end
end
