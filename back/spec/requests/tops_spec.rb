require 'rails_helper'

RSpec.describe "Tops", type: :request do
  describe "GET /test" do
    it "returns http success" do
      get "/tops/test"
      expect(response).to have_http_status(:success)
    end
  end

end