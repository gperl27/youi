class AddUsersToH3 < ActiveRecord::Migration[5.0]
  def change
    add_reference :h3s, :user, foreign_key: true
  end
end
