class CreateExperiences < ActiveRecord::Migration[8.1]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :organization
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
