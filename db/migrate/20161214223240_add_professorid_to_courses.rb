class AddProfessoridToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :professor_id, :integer
  end
end
