class Api::V1::ExercisesController < ApplicationController
   before_action :set_workout


    def index
        @exercises = @workout.exercises
        render json: @exercises
    end

    def create
        @exercise = @workout.exercises.new(exercise_params)
        if @exercise.save
            render json: @exercise
        else
            render json: {error: 'Error Creating Exercise'}
        end
    end

    def show
        @exercise = @workout.exercises.find_by(id: params[:id])
        render json: @exercise
    end

    def update
        @exercise = @workout.exercises.find_by(id: params[:id])
        if @exercise.update(exercise_params)
            render json: @exercise
        else
            render json: {error: 'Error Editing Exercise'}
        end
    end

    def destroy
        @exercise = @workout.exercises.find_by(id: params[:id])
        @exercise.destroy
    end


    private

    def set_workout
        @workout = Workout.find(params[:workout_id])
    end


    def exercise_params
        params.require(:exercise).permit(:workout_id, :name, :muscle_group, :weight, :reps, :sets, :exercise_note)
    end


end

