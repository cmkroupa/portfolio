class CreateItems < ActiveRecord::Migration[8.1]
  def change
    create_table :items do |t|
      t.string :key
      t.string :value

      t.timestamps
    end
    add_index :items, :key
  end
end
