class User < ApplicationRecord
    before_validation :check_dates
    #before_update :check_dates

    has_many :user_activities, dependent: :destroy
    validates :username, presence: true
    validates :username, uniqueness: { case_sensitive: false }

    def check_dates
        available_from = DateTime.now() if available_from.nil?
        available_to = available_from + 1.hour if available_to.nil?
    end
end
