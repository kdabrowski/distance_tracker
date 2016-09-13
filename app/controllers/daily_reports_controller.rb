class DailyReportsController < ApplicationController
  before_action :authenticate_user!

  def index
    @daily_reports = current_user.daily_reports
  end
end
