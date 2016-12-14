class CreateProfessors < ActiveRecord::Migration[5.0]
  def change
    create_table :professors do |t|
      t.string :f_name
      t.string :l_name
      t.string :dept

      t.timestamps
    end
  end
end
