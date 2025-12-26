class CreateDegrees < ActiveRecord::Migration[8.1]
  def change
    create_table :degrees do |t|
      t.string :title
      t.date :graduation
      t.string :description

      t.timestamps
    end
  end
end
