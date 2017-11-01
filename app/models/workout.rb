class Workout < ApplicationRecord
  belongs_to :user

  validates :week, presence: true
  validates :day, presence: true
  validates :exercise, presence: true
end
