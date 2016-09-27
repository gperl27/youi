class CreateListelementProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :listelement_properties do |t|
      t.references :listelement, foreign_key: true
      t.integer :letterspacing
      t.integer :fontsize
      t.string :fontstyle
      t.string :texttransformation

      t.timestamps
    end
  end
end
