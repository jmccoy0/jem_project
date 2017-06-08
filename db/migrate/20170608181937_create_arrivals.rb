class CreateArrivals < ActiveRecord::Migration[5.0]
  def change
    create_table :arrivals do |t|
      t.string :call_letters
      t.string :city
      t.string :state

      t.timestamps

    end
  end
end
