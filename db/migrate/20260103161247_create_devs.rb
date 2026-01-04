class CreateDevs < ActiveRecord::Migration[8.1]
  def change
    create_table :devs do |t|
      t.string :title
      t.string :url
      t.string :tag

      t.timestamps
    end
  end
end
