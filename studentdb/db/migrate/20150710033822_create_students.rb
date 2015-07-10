class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :studentid
      t.string :name
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
