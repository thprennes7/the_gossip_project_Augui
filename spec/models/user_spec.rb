require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @city = FactoryBot.create(:city)
    @user = FactoryBot.create(:user)
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@user).to be_a(User)
      expect(@user).to be_valid
    end
  end

  context "associations" do
    describe "city" do
      it "should belong to city" do
      #  @user.city_id = @city.id
        expect(@user.city.name).to eq(@city.name)
      end
    end
  end
end
