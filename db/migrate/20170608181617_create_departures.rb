class CreateDepartures < ActiveRecord::Migration[5.0]
  def change
    create_table :departures do |t|
      t.string :call_letters
      t.string :city
      t.string :state

      t.timestamps

    end
  end
end
