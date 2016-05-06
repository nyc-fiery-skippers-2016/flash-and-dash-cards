class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |col|
      col.string :name, null: false
      col.string :password_digest
      col.string :email, null: false

      col.timestamps null: false
    end
    add_index :users, :email, unique: true
  end
end
