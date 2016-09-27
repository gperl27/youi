class ChangeTexttransformationTypeInH3Properties < ActiveRecord::Migration[5.0]
  def change
    change_column :h3_properties, :texttransformation, :string
  end
end
