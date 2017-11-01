class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :week, :day, :exercise, :sets, :reps
end
