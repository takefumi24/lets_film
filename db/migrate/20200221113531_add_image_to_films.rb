class AddImageToFilms < ActiveRecord::Migration[5.2]
  def change
    add_column :films, :image, :text
  end
end
