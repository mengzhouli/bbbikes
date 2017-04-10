class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :stars
      t.references :bike, foreign_key: true
      t.references :booking, foreign_key: true
      t.timestamps
    end
  end
end
