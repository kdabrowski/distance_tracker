require 'rails_helper'

RSpec.describe DailyReportsController, type: :controller do
  describe "GET #index" do
    let!(:user) { create(:user) }
    let!(:trip1) { create(:trip, user: user, created_at: Date.today) }
    let!(:trip2) { create(:trip, user: user, created_at: Date.yesterday) }

    it "returns trips for current user" do
      sign_in(user)

      get :index
      expect(assigns(:daily_reports).size).to eq(2)
    end
  end
end
