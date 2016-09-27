class CreateH3s < ActiveRecord::Migration[5.0]
  def change
    create_table :h3s do |t|

      t.timestamps
    end
  end
end
