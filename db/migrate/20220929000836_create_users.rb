class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
<<<<<<< HEAD
      t.string :email, null: false, unique: true
      t.string :password, null: false
=======
      t.string :email, null: false, index: { unique: true, name: 'unique_emails' }
      t.string :password_digest, null: false
>>>>>>> refs/remotes/origin/main
      t.boolean :is_admin, null: false, default: false

      t.timestamps
    end
  end
end
