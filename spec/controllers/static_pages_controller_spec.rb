require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe "Static_pages#index action" do
    it "should successfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
