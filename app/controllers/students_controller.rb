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
    @student = Student.new
    @student.first_name = params[:first_name].to_s
    @student.last_name = params[:second_name].to_s
    @student.save
    redirect_to student_path(@student)
  end

end
