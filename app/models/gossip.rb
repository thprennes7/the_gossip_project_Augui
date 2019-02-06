class Gossip < ApplicationRecord
  belongs_to :user
  has_many :tag_gossips
  has_many :tags, through: :tag_gossips
  has_many :comments
  has_many :likes
  validates :title, presence: true
  validates :content, presence: true

  def update(title, content)
    self[:title] = title
    self[:content] = content
  end

  private

  def self.new_gossip(params)
    Gossip.new(title: params[:title], content: params[:content], user_id: User.last.id)
  end
end
