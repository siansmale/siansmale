class ProgramsController < ApplicationController
  def create
    @exercises = Exercise.where(:id => params[:exercises].map(&:to_i))
    render :show
  end
end
