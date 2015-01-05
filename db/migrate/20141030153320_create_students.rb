class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.integer :advisor_email
      t.string :major
      t.string :minor
      t.string :total_credits
      
      t.timestamps
    end
  end
end
