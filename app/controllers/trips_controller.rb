class TripsController < ApplicationController
  before_action :authenticate_user!

  def new
    @trip = Trip.new
  end

  def create
    @user = current_user
    @trip = @user.trips.new(trip_params)
    @trip.distance = fetch_distance
    if @trip.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @trips = current_user.trips
  end

  private

  def trip_params
    params.require(:trip).permit([:start_address, :destination_address, :cost, :transport_type])
  end

  def fetch_distance
    @trip.distance = DistanceCalculator.new(@trip.start_address, @trip.destination_address).distance
  end
end

