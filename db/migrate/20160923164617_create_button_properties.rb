class CreateButtonProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :button_properties do |t|
      t.references :button, foreign_key: true
      t.integer :border
      t.integer :borderradius
      t.integer :padding
      t.integer :fontsize
      t.integer :hue
      t.integer :saturation
      t.integer :luminosity

      t.timestamps
    end
  end
end
