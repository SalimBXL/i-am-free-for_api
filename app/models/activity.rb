class Activity < ApplicationRecord
    has_many :user_activities, dependent: :destroy
    validates :name, presence: true
    validates :name, uniqueness: { case_sensitive: false }
end
