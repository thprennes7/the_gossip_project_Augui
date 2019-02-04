FactoryBot.define do
  factory :sub_comment do
    content { "MyText" }
    user_id { User.last.id }
    comment_id { Comment.last.id }
  end
end
