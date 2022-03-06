class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.integer :workout_id
      t.string :name
      t.string :muscle_group
      t.integer :weight
      t.integer :reps
      t.integer :sets
      t.string :exercise_note

      t.timestamps
    end
  end
end
