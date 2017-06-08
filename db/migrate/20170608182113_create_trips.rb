class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.integer :plane_id
      t.integer :route_id

      t.timestamps

    end
  end
end
