class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def edit
    @course = Course.find(params[:id])
  end

  def create
    Course.create(course_params)
    redirect_to courses_path
  end

  def update
    m = Course.find(params[:id])
    m.update(course_params)
    redirect_to courses_path
  end

  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully deleted. Was it that bad?'}
    end
  end

  private

  # this is used to prevent mass-assignment of parameters into ActiveRecord models
  def course_params
    params.require(:course).permit(:name)
  end

end
