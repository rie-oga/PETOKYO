class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.integer :member_id, null: false
      t.string :kind, null: false
      t.string :age, null: false
      t.string :name
      t.string :image_id
      t.string :sex

      t.timestamps
    end
  end
end
