class AddManyFeelingIdToFilms < ActiveRecord::Migration[5.2]
  def change
    add_column :films, :many_feeling_id, :integer
  end
end
