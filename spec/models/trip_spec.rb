require 'rails_helper'

RSpec.describe Trip, type: :model do

  it { should validate_presence_of(:cost) }
  it { should validate_presence_of(:start_address) }
  it { should validate_presence_of(:destination_address) }
  it { should validate_presence_of(:distance) }
  it { should validate_presence_of(:transport_type) }

  it { should belong_to(:user) }

  describe ".transport_options" do

    it "returns predefined means of transport" do
      expect(described_class.transport_options).to eq(%w(Uber Sawa MPT))
    end
  end
end
