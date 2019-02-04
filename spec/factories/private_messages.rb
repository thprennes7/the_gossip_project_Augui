FactoryBot.define do
  factory :private_message do
    content { "MyText" }
    sender_id { User.last.id }
    recipient_id { User.last.id }
  end
end
