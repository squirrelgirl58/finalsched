class AddGradeToRegistrations < ActiveRecord::Migration[5.0]
  def change
    add_column :registrations, :grade, :integer
  end
end
