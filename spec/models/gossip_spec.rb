require 'rails_helper'

RSpec.describe Gossip, type: :model do
  before(:each) do
    @city = FactoryBot.create(:city)
    @user = FactoryBot.create(:user)
    @gossip = FactoryBot.create(:gossip)
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@gossip).to be_a(Gossip)
      expect(@gossip).to be_valid
    end
  end

  context "associations" do
    describe "user" do
      it "should belong to user" do
        expect(@gossip.user.first_name).to eq(@user.first_name)
      end
    end
  end
end
