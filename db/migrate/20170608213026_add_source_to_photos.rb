class AddSourceToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :source, :string
  end
end
