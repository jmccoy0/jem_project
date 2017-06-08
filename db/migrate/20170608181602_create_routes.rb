class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.integer :departure_id
      t.integer :arrival_id
      t.integer :plane_id

      t.timestamps

    end
  end
end
