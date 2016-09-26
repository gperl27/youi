class CreateImageProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :image_properties do |t|
      t.references :image, foreign_key: true
      t.integer :height
      t.integer :width
      t.integer :border
      t.integer :border_hue
      t.integer :border_saturation
      t.integer :border_luminosity
      t.integer :borderradius
      t.integer :padding

      t.timestamps
    end
  end
end
