class CreateH1s < ActiveRecord::Migration[5.0]
  def change
    create_table :h1s do |t|

      t.timestamps
    end
  end
end
