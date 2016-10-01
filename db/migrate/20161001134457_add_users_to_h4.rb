class AddUsersToH4 < ActiveRecord::Migration[5.0]
  def change
    add_reference :h4s, :user, foreign_key: true
  end
end
