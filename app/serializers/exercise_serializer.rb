class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :workout_id, :name, :muscle_group, :weight, :sets, :reps, :exercise_note

  belongs_to :workout
end
