require 'rails_helper'

RSpec.describe TripsController, type: :controller do
  describe "GET #index" do
    let!(:user) { create(:user) }
    let!(:trip1) { create(:trip, user: user) }
    let!(:trip2) { create(:trip, user: user) }

    it "returns trips for current user" do
      sign_in(user)
      get :index
      expect(assigns(:trips)).to eq([trip1, trip2])
    end
  end

  describe "POST #create" do
    let!(:user) { create(:user) }
    let!(:valid_params) do
      {
        trip:
        {
        start_address: "Starowiejska 14, Gdynia, Polska",
        destination_address: "Beniowskiego 11, Gdynia, Polska",
        user: user,
        cost: 12.0,
        transport_type: "Sawa"
      }
      }
    end

    it "creates a new object" do
      sign_in(user)

      expect{post :create, params: valid_params}.to change{Trip.count}.by(1)
    end
  end
end
