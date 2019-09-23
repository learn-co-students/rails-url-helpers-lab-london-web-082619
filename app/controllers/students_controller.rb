class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
  end

  def activate
    @student = Student.find(params[:id])
    if @student.active
      @student.active = false
      @student.save
    elsif !@student.active
      @student.active = true
      @student.save
    end
    redirect_to student_path(@student)
    # byebug
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end