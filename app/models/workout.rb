class Workout < ApplicationRecord
  belongs_to :user

  validates :week, :day, :exercise, :user, presence: true
end
