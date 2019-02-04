require 'rails_helper'

RSpec.describe TagGossip, type: :model do
  before(:each) do
    @city = FactoryBot.create(:city)
    @user = FactoryBot.create(:user)
    @gossip = FactoryBot.create(:gossip)
    @tag = FactoryBot.create(:tag)
    @tag_gossip = FactoryBot.create(:tag_gossip)
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@tag_gossip).to be_a(TagGossip)
      expect(@tag_gossip).to be_valid
    end
  end

  context "associations" do
    describe "tag" do
      it "should belong to tag" do
        expect(@tag_gossip.tag).to eq(@tag)
      end
    end
  end
end
