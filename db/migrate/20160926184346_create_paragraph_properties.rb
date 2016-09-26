class CreateParagraphProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :paragraph_properties do |t|
      t.references :paragraph, foreign_key: true
      t.string :textalign
      t.integer :fontsize
      t.integer :wordspacing
      t.integer :padding
      t.integer :indent

      t.timestamps
    end
  end
end
