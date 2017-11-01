class Workout < ApplicationRecord
  belongs_to :user

  validates :week, :day, :exercise, presence: true
end
