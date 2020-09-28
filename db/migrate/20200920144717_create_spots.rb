class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.integer :member_id
      t.integer :genre_id
      t.string :name, null: false, unique: true
      t.string :address
      t.string :url
      t.string :introduction

      t.timestamps
    end
  end
end
