require 'rails_helper'

RSpec.describe DailyReport, type: :model do
  it { should belong_to(:user) }

  describe ".last_seven_days" do
    let!(:user) { create(:user) }
    let!(:todays_trip) { create(:trip, user: user, created_at: Time.now) }
    let!(:last_month_trip) { create(:trip, user: user, created_at: 1.month.ago) }

    it "returns only a report from todays trip" do
      expect(user.daily_reports.first.average_cost).to eq(todays_trip.cost)
    end
  end

  describe ".by_day_asc" do
    let!(:user) { create(:user) }
    let!(:todays_trip) { create(:trip, user: user, created_at: Time.now) }
    let!(:yesterdays_trip) { create(:trip, user: user, created_at: 1.day.ago) }

    it "returns daily reports by day asc" do
      expect(user.daily_reports.size).to eq(2)
      expect(user.daily_reports.first.day).to eq(Date.parse(yesterdays_trip.created_at.to_s))
    end
  end
end
