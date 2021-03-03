class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :rating
      t.timestamps
      t.references :reviews, :restaurant, foreign_key: true
    end
  end
end
