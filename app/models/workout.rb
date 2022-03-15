class Workout < ApplicationRecord
    has_many :exercises
    validates :title, presence: true
end
