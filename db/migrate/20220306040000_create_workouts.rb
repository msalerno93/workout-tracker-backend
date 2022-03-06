class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.string :title
      t.datetime :date
      t.string :workout_note

      t.timestamps
    end
  end
end
