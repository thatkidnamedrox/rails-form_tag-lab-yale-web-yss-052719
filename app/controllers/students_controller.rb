class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    puts params
    @student = Student.create(first_name: student[:first_name], last_name: student[:last_name])
    redirect_to student_path(@student)
  end

end
