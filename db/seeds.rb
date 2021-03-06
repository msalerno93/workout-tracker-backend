# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


workout = Workout.create(title: 'Chest/Triceps', date: Date.today, workout_note: 'This was a great workout!')

exercise1 = Exercise.create(workout_id: 1, name: 'Chest Press', muscle_group: 'Chest', weight: 225, reps: 8, sets: 4, exercise_note: 'Awesome Chest Workout!'),

exercise2 = Exercise.create(workout_id: 1, name: 'Incline Dumbbell Press', muscle_group: 'Chest', weight: 315, reps: 8, sets: 4, exercise_note: 'Killer Chest Workout!')