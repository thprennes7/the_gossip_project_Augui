require 'rails_helper'



RSpec.describe "gossips/index.html.erb", type: :view do

  before(:all) do
    @gossip = FactoryBot.create(:gossip)
  end

  it "as the user" do
    render
    expect(rendered).to match "figaro"
  end
end
