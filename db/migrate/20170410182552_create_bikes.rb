class CreateBikes < ActiveRecord::Migration[5.0]
  def change
    create_table :bikes do |t|
      t.string :brand
      t.string :model
      t.string :bike_type
      t.string :height_range
      t.string :photos
      t.boolean :has_helmet
      t.boolean :has_lock
      t.boolean :has_lights
      t.boolean :has_basket
      t.boolean :has_bell
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
