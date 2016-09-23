class CreateButtonProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :button_properties do |t|
      t.references :button, foreign_key: true
      t.integer :border
      t.integer :borderradius
      t.integer :padding
      t.integer :fontsize
      t.integer :letterspacing
      t.integer :fontweight
      t.integer :color_hue
      t.integer :color_saturation
      t.integer :color_luminosity
      t.integer :bg_hue
      t.integer :bg_saturation
      t.integer :bg_luminosity
      t.integer :border_hue
      t.integer :border_saturation
      t.integer :border_luminosity
      t.string :texttransformation

      t.timestamps
    end
  end
end
