class User < ApplicationRecord
    before_validation :check_dates

    has_many :user_activities, dependent: :destroy
    validates :username, presence: true
    validates :username, uniqueness: { case_sensitive: false }

    def check_dates
        this.available_to = this.available_from + 1.hour if available_from and !available_to
        this.available_from = DateTime.now() if !available_from and available_to
    end
end
