class AddUsersToH5 < ActiveRecord::Migration[5.0]
  def change
    add_reference :h5s, :user, foreign_key: true
  end
end
