class CreateCourseAdmins < ActiveRecord::Migration
  def change
    create_table :course_admins do |t|
      t.string :course_name
      t.string :course_number
      t.string :course_description
      t.string :credits
      t.string :pre_req
      t.string :co_req
      # The year and term it is suggested the student take this class
      t.string :sugg_year
      t.string :sugg_term
      # The year and term it is next offered. Must be updated.
      t.string :next_off_year
      t.string :next_off_term
      # The semester(s) the course is generally offered in.
      t.string :generally_off
      t.string :major
      t.string :minor
      
      t.timestamps
    end
  end
end
