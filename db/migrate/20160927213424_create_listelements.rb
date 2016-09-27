class CreateListelements < ActiveRecord::Migration[5.0]
  def change
    create_table :listelements do |t|

      t.timestamps
    end
  end
end
