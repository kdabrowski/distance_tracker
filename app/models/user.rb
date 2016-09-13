class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :first_name, :last_name, :email

  has_many :trips
  has_many :daily_reports, -> { last_seven_days_by_day_asc }, class_name: "DailyReport"
end
