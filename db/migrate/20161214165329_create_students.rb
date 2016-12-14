class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :f_name
      t.string :l_name
      t.integer :grad_yr
      t.string :netid
      t.string :password

      t.timestamps
    end
  end
end
