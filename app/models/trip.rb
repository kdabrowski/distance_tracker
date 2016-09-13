class Trip < ApplicationRecord
  belongs_to :user

  validates_presence_of :cost, :start_address, :destination_address, :distance, :transport_type

  MEANS_OF_TRANSPORT = %w( Uber Sawa MPT ).freeze

  def self.transport_options
    MEANS_OF_TRANSPORT
  end
end
