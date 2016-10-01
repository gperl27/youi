class AddUsersToBody < ActiveRecord::Migration[5.0]
  def change
    add_reference :bodies, :user, foreign_key: true
  end
end
