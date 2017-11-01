class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.integer :week
      t.string :day
      t.string :exercise
      t.string :sets
      t.string :reps

      t.timestamps
    end
  end
end
