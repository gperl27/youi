class CreateH5Properties < ActiveRecord::Migration[5.0]
  def change
    create_table :h5_properties do |t|
      t.references :h5, foreign_key: true
      t.integer :fontsize
      t.integer :letterspacing
      t.string :texttransformation
      t.integer :wordspacing
      t.integer :fontweight

      t.timestamps
    end
  end
end
