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
      t.integer :color_red
      t.integer :color_green
      t.integer :color_blue
      t.integer :bg_red
      t.integer :bg_green
      t.integer :bg_blue
      t.integer :border_red
      t.integer :border_green
      t.integer :border_blue
      t.string :texttransformation

      t.timestamps
    end
  end
end
