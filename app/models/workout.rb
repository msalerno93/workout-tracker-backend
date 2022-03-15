class Workout < ApplicationRecord
    has_many :exercises
    validates :title, :date, presence: true
end
