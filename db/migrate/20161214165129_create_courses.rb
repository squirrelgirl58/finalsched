class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :c_name
      t.text :desc
      t.integer :prof_id
      t.integer :max_enroll

      t.timestamps
    end
  end
end
