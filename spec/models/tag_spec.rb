require 'rails_helper'

RSpec.describe Tag, type: :model do
  before(:each) do
    @city = FactoryBot.create(:city)
    @user = FactoryBot.create(:user)
    @gossip = FactoryBot.create(:gossip)
    @tag = FactoryBot.create(:tag)
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@tag).to be_a(Tag)
      expect(@tag).to be_valid
    end
  end
end
