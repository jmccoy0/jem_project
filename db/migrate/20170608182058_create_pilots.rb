class CreatePilots < ActiveRecord::Migration[5.0]
  def change
    create_table :pilots do |t|
      t.string :name
      t.string :rank
      t.string :bio
      t.integer :photo_id
      t.integer :plane_id

      t.timestamps

    end
  end
end
