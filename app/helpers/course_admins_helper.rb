module CourseAdminsHelper
  
  def course_admin_params
    params.require(:course_admin).permit(:course_name, :course_number, :course_description, :credits, :pre_req, :co_req, :sugg_year, :sugg_term, :next_off_year, :next_off_term, :generally_off, :major, :minor)
  end
  
end
