class AddIndexToUserNameEmail < ActiveRecord::Migration[5.1]
  def change
  	add_index(:users, [ :email, :user_name ], unique: true)
  end
end
