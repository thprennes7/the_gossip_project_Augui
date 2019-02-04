require 'rails_helper'

RSpec.describe Like, type: :model do
  before(:each) do
    @city = FactoryBot.create(:city)
    @user = FactoryBot.create(:user)
    @gossip = FactoryBot.create(:gossip)
    @comment = FactoryBot.create(:comment)
    @like = FactoryBot.create(:like)
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@like).to be_a(Like)
      expect(@like).to be_valid
    end
  end

  context "associations" do
    describe "user" do
      it "should belong to user" do
        expect(@like.user.first_name).to eq(@user.first_name)
      end
    end
  end

end
