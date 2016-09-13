class DistanceCalculator
  include Geokit::Geocoders

  attr_reader :distance

  def initialize(start, finish)
    @start = start
    @finish = finish
    @distance = sprintf('%.2f', calculate_distance)
  end

  private

  def calculate_distance
    start_geocoded = GoogleGeocoder.geocode(@start)
    finish_geocoded = GoogleGeocoder.geocode(@finish)
    start_geocoded.distance_from(finish_geocoded)
  end
end
