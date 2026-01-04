class CreateStats < ActiveRecord::Migration[8.1]
  def change
    create_table :stats do |t|
      t.integer :viewer_count

      t.timestamps
    end
  end
end
