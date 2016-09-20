class CreateH1Properties < ActiveRecord::Migration[5.0]
  def change
    create_table :h1_properties do |t|
      t.references :h1, foreign_key: true
      t.integer :fontsize
      t.integer :letterspacing
      t.string :texttransformation
      t.integer :fontweight

      t.timestamps
    end
  end
end
