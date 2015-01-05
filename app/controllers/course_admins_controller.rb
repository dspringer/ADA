class CourseAdminsController < ApplicationController
  include CourseAdminsHelper
  
  def index
    @course_admins = CourseAdmin.all
  end
  
  def new
    @course_admin = CourseAdmin.new
  end
  
  def create
    @course_admin = CourseAdmin.new(course_admin_params)
    @course_admin.save
    redirect_to course_admin_path(@course_admin)
  end
  
  def show
    @course_admin = CourseAdmin.find(params[:id])
  end
end
