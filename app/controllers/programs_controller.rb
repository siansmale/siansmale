class ProgramsController < ApplicationController
  def view
    @exercises = Exercise.where(:id => params[:exercises].map(&:to_i))
  end
end
