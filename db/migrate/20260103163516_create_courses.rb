class CreateCourses < ActiveRecord::Migration[8.1]
  def change
    create_table :courses do |t|
      t.string :degree
      t.string :title
      t.string :description

      t.timestamps
    end
    add_index :courses, :degree
  end
end
