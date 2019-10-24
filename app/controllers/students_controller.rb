class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
    set_student

    # if set_student.active 
    #   set_student.active = false
    # else
    #   set_student.active = true
    # end

    redirect_to student_path(set_student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end