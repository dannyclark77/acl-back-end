class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.integer :week
      t.string :goal

      t.timestamps
    end
  end
end
