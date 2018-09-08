class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :uid, unique: true
      t.integer :status, default: 1, null: false
      t.text :profile_content
      t.string :email, unique: true, null: false
      t.string :password_digest, null: false
      t.date :birthday
      t.timestamps
    end
  end
end
