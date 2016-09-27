class CreateH5s < ActiveRecord::Migration[5.0]
  def change
    create_table :h5s do |t|

      t.timestamps
    end
  end
end
