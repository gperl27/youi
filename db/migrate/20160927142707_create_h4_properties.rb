class CreateH4Properties < ActiveRecord::Migration[5.0]
  def change
    create_table :h4_properties do |t|
      t.references :h4, foreign_key: true
      t.integer :fontsize
      t.integer :letterspacing
      t.integer :texttransformation
      t.integer :wordspacing
      t.integer :fontweight

      t.timestamps
    end
  end
end
