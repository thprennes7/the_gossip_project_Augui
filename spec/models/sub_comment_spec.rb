require 'rails_helper'

RSpec.describe SubComment, type: :model do
  before(:each) do
    @city = FactoryBot.create(:city)
    @user = FactoryBot.create(:user)
    @gossip = FactoryBot.create(:gossip)
    @comment = FactoryBot.create(:comment)
    @sub_comment = FactoryBot.create(:sub_comment)
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@sub_comment).to be_a(SubComment)
      expect(@sub_comment).to be_valid
    end
  end

  context "associations" do
    describe "user" do
      it "should belong to user" do
        expect(@sub_comment.user.first_name).to eq(@user.first_name)
      end
    end
  end
end
