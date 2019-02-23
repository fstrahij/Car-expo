class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name, unique: true
      t.string :password_digest
      t.string :email, unique: true
      t.boolean :active, default: true
      t.integer :role_id, default: 1

      t.timestamps
    end
  end
end
