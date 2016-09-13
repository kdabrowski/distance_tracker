class CreateDailyReports < ActiveRecord::Migration
  def change
    create_view :daily_reports
  end
end
