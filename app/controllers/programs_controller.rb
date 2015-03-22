class ProgramsController < ApplicationController
  def show
    @exercises = Exercise.where(:id => params[:exercises].map(&:to_i))
  end
end
