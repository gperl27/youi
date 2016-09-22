class CreateH2s < ActiveRecord::Migration[5.0]
  def change
    create_table :h2s do |t|

      t.timestamps
    end
  end
end
