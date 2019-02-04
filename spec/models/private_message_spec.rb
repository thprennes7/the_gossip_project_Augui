require 'rails_helper'

RSpec.describe PrivateMessage, type: :model do
  before(:each) do
    @city = FactoryBot.create(:city)
    @user = FactoryBot.create(:user)
    @private_message = FactoryBot.create(:private_message)
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@private_message).to be_a(PrivateMessage)
      expect(@private_message).to be_valid
    end
  end

  context "associations" do
    describe "user" do
      it "should belong to user" do
        expect(@private_message.recipient.first_name).to eq(@user.first_name)
      end
    end
  end
end
