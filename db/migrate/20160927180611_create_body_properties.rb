class CreateBodyProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :body_properties do |t|
      t.references :body, foreign_key: true
      t.string :fontfamily

      t.timestamps
    end
  end
end
