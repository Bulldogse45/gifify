class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :crypted_password
      t.string :password_salt
      t.string :email
      t.string :persistence_token

      t.timestamps null: false
    end
  end
end
