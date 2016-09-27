class CreateSectionProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :section_properties do |t|
      t.references :section, foreign_key: true
      t.integer :color_hue
      t.integer :color_saturation
      t.integer :color_luminosity
      t.integer :bg_hue
      t.integer :bg_saturation
      t.integer :bg_luminosity

      t.timestamps
    end
  end
end
