class CreatePlanes < ActiveRecord::Migration[5.0]
  def change
    create_table :planes do |t|
      t.string :model
      t.integer :capacity
      t.string :cabin_height
      t.integer :photo_id

      t.timestamps

    end
  end
end
