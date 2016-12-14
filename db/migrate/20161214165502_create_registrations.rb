class CreateRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :registrations do |t|
      t.integer :course_id
      t.integer :student_id

      t.timestamps
    end
  end
end
