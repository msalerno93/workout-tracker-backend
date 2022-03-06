class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :workout_note

  has_many :exercises
end
