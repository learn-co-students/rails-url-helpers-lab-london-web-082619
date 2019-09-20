class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  
  end

  def login
    # try login
    # if it fails
    # run register_path
  end

  def activate
    @student = Student.find(params[:id])
    @student.update(active: !@student.active)
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end