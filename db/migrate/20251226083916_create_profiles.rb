class CreateProfiles < ActiveRecord::Migration[8.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :story
      t.string :gpa
      t.integer :year_started
      t.text :interests

      t.timestamps
    end
  end
end
