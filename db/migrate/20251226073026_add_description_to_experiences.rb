class AddDescriptionToExperiences < ActiveRecord::Migration[8.1]
  def change
    add_column :experiences, :description, :text
  end
end
