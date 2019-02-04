require 'rails_helper'

RSpec.describe ShowsController, type: :controller do

  describe "GET #gossip" do
    it "returns http success" do
      get :gossip
      expect(response).to have_http_status(:success)
    end
  end

end
