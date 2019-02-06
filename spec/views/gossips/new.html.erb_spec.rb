require 'rails_helper'

RSpec.describe "gossips/new.html.erb", type: :view do
  it "displays h1" do
    render
    expect(rendered).to have_content 'Créez un nouveau gossip'
  end
end
