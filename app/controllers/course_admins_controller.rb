class CourseAdminsController < ApplicationController
  include CourseAdminsHelper
  
  def index
    @course_admins = CourseAdmin.all
  end
  
  def edit
    @course_admin = CourseAdmin.find(params[:id])
  end
  
  def new
    @course_admin = CourseAdmin.new
  end
  
  def create
    @course_admin = CourseAdmin.new(course_admin_params)
    @course_admin.save
    
    flash.notice = "Created Course: '#{@course_admin.course_name} #{@course_admin.course_number}'!"
    
    redirect_to course_admin_path(@course_admin)
  end
  
  def destroy
    @course_admin = CourseAdmin.find(params[:id])
    
    #flash.notice = "Deleted Course: '#{@course_admin.course_name} #{@course_admin.course_number}'!"
    
    @course_admin.destroy
    
    flash.notice = "Deleted Course: '#{@course_admin.course_name} #{@course_admin.course_number}'"
    
    redirect_to course_admins_path
  end
  
  def update
    @course_admin = CourseAdmin.find(params[:id])
    @course_admin.update(course_admin_params)
    
    flash.notice = "Course '#{@course_admin.course_name} #{@course_admin.course_number}' Updated!"
    
    redirect_to course_admin_path(@course_admin)
  end
  
  def show
    @course_admin = CourseAdmin.find(params[:id])
  end
end
