class Api::V1::WorkoutsController < ApplicationController

    def index
        @workouts = Workouts.all
        render json: @workouts
    end

    def create
        @workout = Workout.new(workout_params)
        if @workout.save
            render json: @workout
        else
            render json: {error: 'Error Creating Workout'}
        end
    end

    def show
        @workout = Workout.find(params[:id])
        render json: @workout
    end

    def destroy
        @workout = Workout.find(params[:id])
        @workout.destory
    end


    private

    def workout_params
        params.require(:workout).permit(:title, :date, :workout_note)
    end

end
