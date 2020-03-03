class AddFeelingIdToFilms < ActiveRecord::Migration[5.2]
  def change
    add_column :films, :feeling_id, :integer
  end
end
