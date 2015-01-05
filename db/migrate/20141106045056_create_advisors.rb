class CreateAdvisors < ActiveRecord::Migration
  def change
    create_table :advisors do |t|
      t.string :name
      t.string :email
      t.integer :student_count
      t.string :specialty
      
      t.timestamps
    end
  end
end
