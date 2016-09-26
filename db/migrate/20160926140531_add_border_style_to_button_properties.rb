class AddBorderStyleToButtonProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :button_properties, :border_style, :string
  end
end
