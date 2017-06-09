class RemovePlaneIdFromRoute < ActiveRecord::Migration[5.0]
  def change
    remove_column :routes, :plane_id, :integer
  end
end
