class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :title
      t.string :text
      t.references :user
      t.references :review
      t.timestamps
    end
  end
end
