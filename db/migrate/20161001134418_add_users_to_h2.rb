class AddUsersToH2 < ActiveRecord::Migration[5.0]
  def change
    add_reference :h2s, :user, foreign_key: true
  end
end
