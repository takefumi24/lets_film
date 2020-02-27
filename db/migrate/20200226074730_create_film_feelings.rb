class CreateFilmFeelings < ActiveRecord::Migration[5.2]
  def change
    create_table :film_feelings do |t|
      t.references :film, foreign_key: true
      t.references :feeling, foreign_key: true

      t.timestamps
    end
  end
end
