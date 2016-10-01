class AddUsersToListelement < ActiveRecord::Migration[5.0]
  def change
    add_reference :listelements, :user, foreign_key: true
  end
end
