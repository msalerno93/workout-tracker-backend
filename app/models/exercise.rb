class Exercise < ApplicationRecord
    belongs_to :workout
    validates :name, :weight, :reps, :sets, :muscle_group, presence: true
    validates_inclusion_of :muscle_group, :in ['Chest', 'Back', 'Shoulders', 'Biceps', 'Triceps', 'Legs', 'Abs']
end
