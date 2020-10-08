class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.integer :member_id
      t.integer :genre_id, null: false
      t.string :name, null: false, unique: true
      t.string :address, null: false
      t.string :url
      t.string :introduction, null: false

      t.timestamps null: false
    end
  end
end
