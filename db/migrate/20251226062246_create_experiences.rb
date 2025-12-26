class CreateExperiences < ActiveRecord::Migration[8.1]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :organization
      t.string :url
      t.date :start
      t.date :end
      t.string :location

      t.timestamps
    end
  end
end
