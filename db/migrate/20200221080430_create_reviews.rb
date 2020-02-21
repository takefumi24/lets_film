class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :text
      t.references :user
      t.references :feeling
      t.references :film
      t.timestamps
    end
  end
end
