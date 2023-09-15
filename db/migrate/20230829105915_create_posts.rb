class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :airport_name
      t.string :prefecture
      t.string :city
      t.text :impression
      t.binary :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
