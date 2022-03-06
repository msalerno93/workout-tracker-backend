class Exercise < ApplicationRecord
    belongs_to :workout
    validates :name, :weight, :reps, :sets, :muscle_group, presence: true
end