class DailyReport < ApplicationRecord
  belongs_to :user
  scope :last_seven_days, -> { where("day >= ?", 7.days.ago) }
  scope :by_day_asc, -> { order("day ASC") }
  scope :last_seven_days_by_day_asc, -> { last_seven_days.by_day_asc }
end
