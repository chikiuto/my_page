class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :name, null: false
      t.text :question, null: false
      t.text :answer
<<<<<<< HEAD
      # t.string :statusn, null:false, default: "published", comment: "published: 公開"
      # enum
      t.boolean :is_published, null: false, default: false
=======
      t.boolean :is_published, null: false, default: false

>>>>>>> refs/remotes/origin/main
      t.timestamps
    end
  end
end
