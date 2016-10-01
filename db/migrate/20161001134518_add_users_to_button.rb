class AddUsersToButton < ActiveRecord::Migration[5.0]
  def change
    add_reference :buttons, :user, foreign_key: true
  end
end
