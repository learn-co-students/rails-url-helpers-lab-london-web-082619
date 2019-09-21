class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = set_student
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)

    redirect_to student_path(@student)
  end

  def edit
    @student = set_student
  end

  def update
    @student = set_student
    @student.update(student_params)

    redirect_to student_path(@student)
  end

  def destroy
    Student.destroy(params[:id])
    redirect_to students_path
  end

  def activate
    @student = set_student
    # current student inactive, so we set active to true 
    @student.active = !@student.active
    @student.save

    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end

end