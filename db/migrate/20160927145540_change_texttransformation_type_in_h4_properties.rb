class ChangeTexttransformationTypeInH4Properties < ActiveRecord::Migration[5.0]
  def change
    change_column :h4_properties, :texttransformation, :string
  end
end
