class ChangeUserCookieToString < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :cookie_id, :string
  end
end
