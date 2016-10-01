class AddUsersToH1 < ActiveRecord::Migration[5.0]
  def change
    add_reference :h1s, :user, foreign_key: true
  end
end
