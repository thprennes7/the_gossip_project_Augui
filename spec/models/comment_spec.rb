require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:each) do
    @city = FactoryBot.create(:city)
    @user = FactoryBot.create(:user)
    @gossip = FactoryBot.create(:gossip)
    @comment = FactoryBot.create(:comment)
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@comment).to be_a(Comment)
      expect(@comment).to be_valid
    end
  end

  context "associations" do
    describe "gossip" do
      it "should belongs to gossip" do
        expect(@comment.gossip.title).to eq(@gossip.title)
      end
    end
  end
end
