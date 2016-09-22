class CreateH2Properties < ActiveRecord::Migration[5.0]
  def change
    create_table :h2_properties do |t|
      t.integer :fontsize
      t.integer :letterspacing
      t.string :texttransformation
      t.integer :wordspacing
      t.integer :fontweight
      t.references :h2, foreign_key: true

      t.timestamps
    end
  end
end
